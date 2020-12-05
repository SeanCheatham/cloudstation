import 'package:cloudstation/models/crdt_entity.dart';
import 'package:cloudstation/models/event_sourced_entity.dart';
import 'package:cloudstation/models/model.dart';
import 'package:cloudstation/models/projects/project_events.dart' as events;

abstract class ProjectState {
  final String projectId;

  ProjectState(this.projectId);

  Stream<ProjectState> mapEventToState(events.ProjectEvent event);
}

class UnloadedProjectState extends ProjectState {
  UnloadedProjectState(String projectId) : super(projectId);

  @override
  Stream<ProjectState> mapEventToState(events.ProjectEvent event) async* {
    if (event is events.LoadProject) {
      yield LoadedProjectState(
        projectId,
        event.models,
        event.eventSourcedEntities,
        event.crdtEntities,
        event.models.isEmpty ? null : 0,
        event.eventSourcedEntities.isEmpty ? null : 0,
        event.crdtEntities.isEmpty ? null : 0,
      );
    }
  }
}

class LoadedProjectState extends ProjectState {
  final List<Model> models;
  final List<EventSourcedEntity> eventSourcedEntities;
  final List<CRDTEntity> crdtEntities;
  int selectedModelIndex;
  int selectedEntityIndex;
  int selectedCrdtIndex;

  LoadedProjectState(
    String projectId,
    this.models,
    this.eventSourcedEntities,
    this.crdtEntities,
    this.selectedModelIndex,
    this.selectedEntityIndex,
    this.selectedCrdtIndex,
  ) : super(projectId);

  @override
  Stream<ProjectState> mapEventToState(events.ProjectEvent event) async* {
    // Model Events
    if (event is events.AddModel) {
      models.add(Model("NewModel", []));
      selectedModelIndex = models.length - 1;
    } else if (event is events.UpdateModel) {
      final index =
          models.indexWhere((m) => m.name == event.originalModel.name);
      final previous = models[index];
      models[index] = event.updatedModel;
      models.forEach((m) {
        for (var i = 0; i < m.properties.length; i++) {
          final property = m.properties[i];
          if (property.type is ModelTypeReference &&
              property.type.name == previous.name) {
            m.properties[i] =
                property.withType(ModelTypeReference(event.updatedModel.name));
          }
        }
      });
    } else if (event is events.DeleteModel) {
      models.removeWhere((m) => m.name == event.model.name);
      selectedModelIndex = null;
    } else if (event is events.SelectModel) {
      selectedModelIndex = event.index;
    }
    // Event Sourced Entity Events
    else if (event is events.AddEventSourcedEntity) {
      eventSourcedEntities.add(EventSourcedEntity("NewEntity",
          StaticTypeReference(StaticType.int32), [], [], null, null));
      selectedEntityIndex = eventSourcedEntities.length - 1;
    } else if (event is events.UpdatedEventSourcedEntity) {
      final index =
          eventSourcedEntities.indexWhere((e) => e.name == event.original.name);
      eventSourcedEntities[index] = event.updated;
    } else if (event is events.DeleteEventSourcedEntity) {
      eventSourcedEntities.removeWhere((e) => e.name == event.entity.name);
      selectedEntityIndex = null;
    } else if (event is events.SelectEventSourcedEntity) {
      selectedEntityIndex = event.index;
    }
    // CRDT Entity Events
    else if (event is events.AddCRDTEntity) {
      crdtEntities.add(CRDTEntity("NewEntity", Flag(), [], null));
      selectedCrdtIndex = crdtEntities.length - 1;
    } else if (event is events.UpdateCRDTEntity) {
      final index =
          crdtEntities.indexWhere((e) => e.name == event.original.name);
      crdtEntities[index] = event.updated;
    } else if (event is events.DeleteCRDTEntity) {
      crdtEntities.removeWhere((e) => e.name == event.entity.name);
      selectedCrdtIndex = null;
    } else if (event is events.SelectCRDTEntity) {
      selectedCrdtIndex = event.index;
    }
    yield clone();
  }

  LoadedProjectState clone() => LoadedProjectState(
        projectId,
        List.of(models),
        List.of(eventSourcedEntities),
        List.of(crdtEntities),
        selectedModelIndex,
        selectedEntityIndex,
        selectedCrdtIndex,
      );
}
