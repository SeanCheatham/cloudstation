import 'package:cloudstation_protocols/src/generated/project.pb.dart';
import 'package:cloudstation_protocols/src/generated/domain.pb.dart';
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
  return state.rebuild(
    (state) => state..models.add(event.model),
  );
}

_modelRemovedEvent(Project state, ModelRemovedEvent event) {
  return state.rebuild(
    (state) => state..models.removeWhere((model) => model.name == event.name),
  );
}

_modelUpdatedEvent(Project state, ModelUpdatedEvent event) {
  return state.rebuild(
    (state) => state
      ..models[state.models
              .indexWhere((model) => model.name == event.originalName)] =
          event.updatedModel,
  );
}

_eventSourcedEntityAddedEvent(
    Project state, EventSourcedEntityAddedEvent event) {
  return state.rebuild(
    (state) => state..eventSourcedEntities.add(event.entity),
  );
}

_eventSourcedEntityRemovedEvent(
    Project state, EventSourcedEntityRemovedEvent event) {
  return state.rebuild(
    (state) => state
      ..eventSourcedEntities.removeWhere((entity) => entity.name == event.name),
  );
}

_eventSourcedEntityUpdatedEvent(
    Project state, EventSourcedEntityUpdatedEvent event) {
  return state.rebuild(
    (state) => state
      ..eventSourcedEntities[state.eventSourcedEntities.indexWhere(
          (eventsourcedentity) =>
              eventsourcedentity.name == event.originalName)] = event.entity,
  );
}

_replicatedEntityAddedEvent(Project state, ReplicatedEntityAddedEvent event) {
  return state.rebuild(
    (state) => state..replicatedEntities.add(event.entity),
  );
}

_replicatedEntityRemovedEvent(
    Project state, ReplicatedEntityRemovedEvent event) {
  return state.rebuild(
    (state) => state
      ..replicatedEntities.removeWhere((entity) => entity.name == event.name),
  );
}

_replicatedEntityUpdatedEvent(
    Project state, ReplicatedEntityUpdatedEvent event) {
  return state.rebuild(
    (state) => state
      ..replicatedEntities[state.eventSourcedEntities.indexWhere(
          (replicatedentity) =>
              replicatedentity.name == event.originalName)] = event.entity,
  );
}

_actionAddedEvent(Project state, ActionAddedEvent event) {
  return state.rebuild(
    (state) => state..actions.add(event.action),
  );
}

_actionRemovedEvent(Project state, ActionRemovedEvent event) {
  return state.rebuild(
    (state) =>
        state..actions.removeWhere((action) => action.name == event.name),
  );
}

_actionUpdatedEvent(Project state, ActionUpdatedEvent event) {
  return state.rebuild(
    (state) => state
      ..actions[state.actions
              .indexWhere((action) => action.name == event.originalName)] =
          event.entity,
  );
}
