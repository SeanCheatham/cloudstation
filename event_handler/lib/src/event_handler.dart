import 'package:cloudstation_protocols/generated/domain.pbjson.dart';
import 'package:cloudstation_protocols/generated/project.pb.dart';
import 'package:cloudstation_protocols/generated/domain.pb.dart';
import 'package:protobuf/protobuf.dart';

Project mapEventToState(Project state, event) {
  if (event is ModelAddedEvent)
    return _modelAddedEvent(state, event);
  else if (event is ModelRemovedEvent)
    return _modelRemovedEvent(state, event);
  else if (event is ModelUpdatedEvent)
    return _modelUpdatedEvent(state, event);
  else if (event is EventSourcedEntityAddedEvent)
    return _eventSourcedEntityAddedEvent(state, event);
  else if (event is EventSourcedEntityRemovedEvent)
    return _eventSourcedEntityRemovedEvent(state, event);
  else if (event is EventSourcedEntityUpdatedEvent)
    return _eventSourcedEntityUpdatedEvent(state, event);
  else if (event is ReplicatedEntityAddedEvent)
    return _replicatedEntityAddedEvent(state, event);
  else if (event is ReplicatedEntityRemovedEvent)
    return _replicatedEntityRemovedEvent(state, event);
  else if (event is ReplicatedEntityUpdatedEvent)
    return _replicatedEntityUpdatedEvent(state, event);
  else if (event is ActionAddedEvent)
    return _actionAddedEvent(state, event);
  else if (event is ActionRemovedEvent)
    return _actionRemovedEvent(state, event);
  else if (event is ActionUpdatedEvent)
    return _actionUpdatedEvent(state, event);
  return state;
}

_modelAddedEvent(Project state, ModelAddedEvent event) {
  final model = event.model.deepCopy();
  if (!model.hasName() || model.name.isEmpty) {
    model.name = "NewModel";
  }
  return state..models.add(model);
}

_modelRemovedEvent(Project state, ModelRemovedEvent event) {
  state..models.removeWhere((model) => model.name == event.name);
}

_modelUpdatedEvent(Project state, ModelUpdatedEvent event) {
  final index =
      state.models.indexWhere((model) => model.name == event.originalName);

  final originalTypeReference = TypeReference_Model()
    ..name = event.originalName;

  final updatedTypeReference = TypeReference_Model()
    ..name = event.updatedModel.name;
  return _fixTypeReferences(
    state..models[index] = event.updatedModel,
    TypeReference()..model = originalTypeReference,
    TypeReference()..model = updatedTypeReference,
  );
}

_eventSourcedEntityAddedEvent(
    Project state, EventSourcedEntityAddedEvent event) {
  final entity = event.entity.deepCopy();
  if (!entity.hasName() || entity.name.isEmpty) {
    entity.name = _nextUniqueName(
        state.eventSourcedEntities.map((a) => a.name).toSet(), "NewEntity", 0);
  }
  return state..eventSourcedEntities.add(entity);
}

_eventSourcedEntityRemovedEvent(
    Project state, EventSourcedEntityRemovedEvent event) {
  return state
    ..eventSourcedEntities.removeWhere((entity) => entity.name == event.name);
}

_eventSourcedEntityUpdatedEvent(
    Project state, EventSourcedEntityUpdatedEvent event) {
  final index = state.eventSourcedEntities.indexWhere(
      (eventsourcedentity) => eventsourcedentity.name == event.originalName);
  return state..eventSourcedEntities[index] = event.entity;
}

_replicatedEntityAddedEvent(Project state, ReplicatedEntityAddedEvent event) {
  final entity = event.entity.deepCopy();
  if (!entity.hasName() || entity.name.isEmpty) {
    entity.name = _nextUniqueName(
        state.replicatedEntities.map((a) => a.name).toSet(), "NewEntity", 0);
  }
  return state..replicatedEntities.add(entity);
}

_replicatedEntityRemovedEvent(
    Project state, ReplicatedEntityRemovedEvent event) {
  return state
    ..replicatedEntities.removeWhere((entity) => entity.name == event.name);
}

_replicatedEntityUpdatedEvent(
    Project state, ReplicatedEntityUpdatedEvent event) {
  return state
    ..replicatedEntities[state.eventSourcedEntities.indexWhere(
        (replicatedentity) =>
            replicatedentity.name == event.originalName)] = event.entity;
}

_actionAddedEvent(Project state, ActionAddedEvent event) {
  final entity = event.action.deepCopy();
  if (!entity.hasName() || entity.name.isEmpty) {
    entity.name = _nextUniqueName(
        state.actions.map((a) => a.name).toSet(), "NewAction", 0);
  }
  if (!entity.hasCommandType()) {
    entity.commandType = TypeReference()
      ..static = (TypeReference_Static()..staticType = StaticType.INT32);
  }
  if (!entity.hasResponseType()) {
    entity.responseType = TypeReference()
      ..static = (TypeReference_Static()..staticType = StaticType.INT32);
  }
  return state..actions.add(entity);
}

_actionRemovedEvent(Project state, ActionRemovedEvent event) {
  return state..actions.removeWhere((action) => action.name == event.name);
}

_actionUpdatedEvent(Project state, ActionUpdatedEvent event) {
  final index =
      state.actions.indexWhere((action) => action.name == event.originalName);
  return state..actions[index] = event.action;
}

_fixTypeReferences(
    Project state, TypeReference originalType, TypeReference updatedType) {
  fix(TypeReference reference) =>
      reference == originalType ? updatedType : originalType;

  fixEventSourcedEntity(EventSourcedEntity entity) => entity
    ..commandHandlers.applyForeach((handler) => handler
      ..commandType = fix(handler.commandType)
      ..responseType = fix(handler.responseType));

  fixReplicatedEntity(ReplicatedEntity entity) => entity
    ..commandHandlers.applyForeach(
        (handler) => handler..commandType = fix(handler.commandType));

  fixAction(Action action) => action.commandType == originalType
      ? (action..commandType = updatedType)
      : action;

  return state
    ..eventSourcedEntities.applyForeach(fixEventSourcedEntity)
    ..replicatedEntities.applyForeach(fixReplicatedEntity)
    ..actions.applyForeach(fixAction);
}

String _nextUniqueName(Set<String> names, String base, int index) {
  if (!names.contains(base)) return base;
  if (index > 0) {
    final withIndex = base + "$index";
    if (!names.contains(withIndex)) return withIndex;
  }

  return _nextUniqueName(names, base, index + 1);
}

extension ListApplyMap<T> on List<T> {
  void applyForeach(T Function(T) f) {
    for (int i = 0; i < length; i++) {
      this[i] = f(this[i]);
    }
  }
}
