import 'package:cloudstation/models/crdt_entity.dart';
import 'package:cloudstation/models/event_sourced_entity.dart';
import 'package:cloudstation/models/model.dart';

abstract class ProjectEvent {}

class LoadProject extends ProjectEvent {
  final List<Model> models;
  final List<EventSourcedEntity> eventSourcedEntities;
  final List<CRDTEntity> crdtEntities;

  LoadProject(this.models, this.eventSourcedEntities, this.crdtEntities);
}

class AddModel extends ProjectEvent {}

class UpdateModel extends ProjectEvent {
  final Model originalModel;
  final Model updatedModel;

  UpdateModel(this.originalModel, this.updatedModel);
}

class DeleteModel extends ProjectEvent {
  final Model model;

  DeleteModel(this.model);
}

class SelectModel extends ProjectEvent {
  final int index;

  SelectModel(this.index);
}

class AddEventSourcedEntity extends ProjectEvent {}

class UpdatedEventSourcedEntity extends ProjectEvent {
  final EventSourcedEntity original;
  final EventSourcedEntity updated;

  UpdatedEventSourcedEntity(this.original, this.updated);
}

class DeleteEventSourcedEntity extends ProjectEvent {
  final EventSourcedEntity entity;

  DeleteEventSourcedEntity(this.entity);
}

class SelectEventSourcedEntity extends ProjectEvent {
  final int index;

  SelectEventSourcedEntity(this.index);
}

class AddCRDTEntity extends ProjectEvent {}

class UpdateCRDTEntity extends ProjectEvent {
  final CRDTEntity original;
  final CRDTEntity updated;

  UpdateCRDTEntity(this.original, this.updated);
}

class DeleteCRDTEntity extends ProjectEvent {
  final CRDTEntity entity;

  DeleteCRDTEntity(this.entity);
}

class SelectCRDTEntity extends ProjectEvent {
  final int index;

  SelectCRDTEntity(this.index);
}
