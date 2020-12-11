import 'package:cloudstate/cloudstate.dart';

import 'package:cloudstation_protocols/generated/domain.pb.dart' as d;
import 'package:cloudstation_protocols/generated/project.pb.dart' as p;
import 'package:cloudstation_event_handler/event_handler.dart' as eventHandler;

@EventSourcedEntity("project", 10)
class ProjectEventSourcedEntity {
  d.Project _project = null;

  String entityId;
  Context context;

  ProjectEventSourcedEntity.create(@EntityId() entityId, Context context) {
    this._project = d.Project()..projectId = entityId;
  }

  @Snapshot()
  d.Project snapshot() => _project;

  @SnapshotHandler()
  void handleSnapshot(d.Project project) {
    this._project = project;
  }

  _handleEvent(event) {
    this._project = eventHandler.mapEventToState(_project, event);
  }

  @EventHandler()
  void modelAddedEvent(p.ModelAddedEvent event) => _handleEvent(event);

  @EventHandler()
  void modelRemovedEvent(p.ModelRemovedEvent event) => _handleEvent(event);

  @EventHandler()
  void modelUpdatedEvent(p.ModelUpdatedEvent event) => _handleEvent(event);

  @EventHandler()
  void eventSourcedEntityAddedEvent(p.EventSourcedEntityAddedEvent event) =>
      _handleEvent(event);

  @EventHandler()
  void eventSourcedEntityRemovedEvent(p.EventSourcedEntityRemovedEvent event) =>
      _handleEvent(event);

  @EventHandler()
  void eventSourcedEntityUpdatedEvent(p.EventSourcedEntityUpdatedEvent event) =>
      _handleEvent(event);

  @EventHandler()
  void replicatedEntityAddedEvent(p.ReplicatedEntityAddedEvent event) =>
      _handleEvent(event);

  @EventHandler()
  void replicatedEntityRemovedEvent(p.ReplicatedEntityRemovedEvent event) =>
      _handleEvent(event);

  @EventHandler()
  void replicatedEntityUpdatedEvent(p.ReplicatedEntityUpdatedEvent event) =>
      _handleEvent(event);

  @EventHandler()
  void actionAddedEvent(p.ActionAddedEvent event) => _handleEvent(event);

  @EventHandler()
  void actionRemovedEvent(p.ActionRemovedEvent event) => _handleEvent(event);

  @EventHandler()
  void actionUpdatedEvent(p.ActionUpdatedEvent event) => _handleEvent(event);

  @EventSourcedCommandHandler()
  p.GetProjectResponse getProjectCommand() =>
      p.GetProjectResponse()..project = _project;

  @EventSourcedCommandHandler()
  p.AddModelResponse addModelCommand(
      p.AddModelCommand command, CommandContext ctx) {
    if (_project.models.any((m) => m.name == command.model.name)) {
      ctx.fail("Duplicate model name");
    }
    ctx.emit(p.ModelAddedEvent()..model = command.model);

    return p.AddModelResponse()..result = p.Result();
  }

  @EventSourcedCommandHandler()
  p.RemoveModelResponse removeModelCommand(
      p.RemoveModelCommand command, CommandContext ctx) {
    if (!_project.models.any((m) => m.name == command.name)) {
      ctx.fail("Model does not exist");
    }
    ctx.emit(p.ModelRemovedEvent()..name = command.name);

    return p.RemoveModelResponse()..result = p.Result();
  }

  @EventSourcedCommandHandler()
  p.UpdateModelResponse updateModelCommand(
      p.UpdateModelCommand command, CommandContext ctx) {
    if (!_project.models.any((m) => m.name == command.originalName)) {
      ctx.fail("Model does not exist");
    }

    ctx.emit(p.ModelUpdatedEvent()
      ..originalName = command.originalName
      ..updatedModel = command.updatedModel);

    return p.UpdateModelResponse()..result = p.Result();
  }

  @EventSourcedCommandHandler()
  p.AddEventSourcedEntityResponse addEventSourcedEntityCommand(
      p.AddEventSourcedEntityCommand command, CommandContext ctx) {
    if (_project.eventSourcedEntities
        .any((m) => m.name == command.entity.name)) {
      ctx.fail("Duplicate Event Sourced Entity name");
    }
    ctx.emit(p.EventSourcedEntityAddedEvent()..entity = command.entity);

    return p.AddEventSourcedEntityResponse()..result = p.Result();
  }

  @EventSourcedCommandHandler()
  p.RemoveEventSourcedEntityResponse removeEventSourcedEntityCommand(
      p.RemoveEventSourcedEntityCommand command, CommandContext ctx) {
    if (!_project.eventSourcedEntities.any((m) => m.name == command.name)) {
      ctx.fail("Event Sourced Entity does not exist");
    }
    ctx.emit(p.EventSourcedEntityRemovedEvent()..name = command.name);

    return p.RemoveEventSourcedEntityResponse()..result = p.Result();
  }

  @EventSourcedCommandHandler()
  p.UpdateEventSourcedEntityResponse updateEventSourcedEntityCommand(
      p.UpdateEventSourcedEntityCommand command, CommandContext ctx) {
    if (!_project.eventSourcedEntities
        .any((m) => m.name == command.originalName)) {
      ctx.fail("Event Sourced Entity does not exist");
    }

    ctx.emit(p.EventSourcedEntityUpdatedEvent()
      ..originalName = command.originalName
      ..entity = command.entity);

    return p.UpdateEventSourcedEntityResponse()..result = p.Result();
  }

  @EventSourcedCommandHandler()
  p.AddReplicatedEntityResponse addReplicatedEntityCommand(
      p.AddReplicatedEntityCommand command, CommandContext ctx) {
    if (_project.eventSourcedEntities
        .any((m) => m.name == command.entity.name)) {
      ctx.fail("Duplicate Event Sourced Entity name");
    }
    ctx.emit(p.ReplicatedEntityAddedEvent()..entity = command.entity);

    return p.AddReplicatedEntityResponse()..result = p.Result();
  }

  @EventSourcedCommandHandler()
  p.RemoveReplicatedEntityResponse removeReplicatedEntityCommand(
      p.RemoveReplicatedEntityCommand command, CommandContext ctx) {
    if (!_project.eventSourcedEntities.any((m) => m.name == command.name)) {
      ctx.fail("Event Sourced Entity does not exist");
    }
    ctx.emit(p.ReplicatedEntityRemovedEvent()..name = command.name);

    return p.RemoveReplicatedEntityResponse()..result = p.Result();
  }

  @EventSourcedCommandHandler()
  p.UpdateReplicatedEntityResponse updateReplicatedEntityCommand(
      p.UpdateReplicatedEntityCommand command, CommandContext ctx) {
    if (!_project.eventSourcedEntities
        .any((m) => m.name == command.originalName)) {
      ctx.fail("Event Sourced Entity does not exist");
    }

    ctx.emit(p.ReplicatedEntityUpdatedEvent()
      ..originalName = command.originalName
      ..entity = command.entity);

    return p.UpdateReplicatedEntityResponse()..result = p.Result();
  }

  @EventSourcedCommandHandler()
  p.AddActionResponse addActionCommand(
      p.AddActionCommand command, CommandContext ctx) {
    if (_project.eventSourcedEntities
        .any((m) => m.name == command.action.name)) {
      ctx.fail("Duplicate Event Sourced Entity name");
    }
    ctx.emit(p.ActionAddedEvent()..action = command.action);

    return p.AddActionResponse()..result = p.Result();
  }

  @EventSourcedCommandHandler()
  p.RemoveActionResponse removeActionCommand(
      p.RemoveActionCommand command, CommandContext ctx) {
    if (!_project.eventSourcedEntities.any((m) => m.name == command.name)) {
      ctx.fail("Event Sourced Entity does not exist");
    }
    ctx.emit(p.ActionRemovedEvent()..name = command.name);

    return p.RemoveActionResponse()..result = p.Result();
  }

  @EventSourcedCommandHandler()
  p.UpdateActionResponse updateActionCommand(
      p.UpdateActionCommand command, CommandContext ctx) {
    if (!_project.eventSourcedEntities
        .any((m) => m.name == command.originalName)) {
      ctx.fail("Event Sourced Entity does not exist");
    }

    ctx.emit(p.ActionUpdatedEvent()
      ..originalName = command.originalName
      ..action = command.action);

    return p.UpdateActionResponse()..result = p.Result();
  }
}
