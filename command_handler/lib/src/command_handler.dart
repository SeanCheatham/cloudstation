import 'package:cloudstation_protocols/generated/project.pb.dart' as p;
import 'package:cloudstation_protocols/generated/domain.pb.dart' as d;
import 'package:protobuf/protobuf.dart';

class ValidationError {
  final int code;
  final String reason;

  const ValidationError(this.code, this.reason);
}

List<ValidationError> validateCommand(d.Project state, command) {
  if (command is p.GetProjectCommand)
    return command.validate(state);
  else if (command is p.AddModelCommand)
    return command.validate(state);
  else if (command is p.UpdateModelCommand)
    return command.validate(state);
  else if (command is p.RemoveModelCommand)
    return command.validate(state);
  else if (command is p.AddEventSourcedEntityCommand)
    return command.validate(state);
  else if (command is p.UpdateEventSourcedEntityCommand)
    return command.validate(state);
  else if (command is p.RemoveEventSourcedEntityCommand)
    return command.validate(state);
  else if (command is p.AddReplicatedEntityCommand)
    return command.validate(state);
  else if (command is p.UpdateReplicatedEntityCommand)
    return command.validate(state);
  else if (command is p.RemoveReplicatedEntityCommand)
    return command.validate(state);
  else if (command is p.AddActionCommand)
    return command.validate(state);
  else if (command is p.UpdateActionCommand)
    return command.validate(state);
  else if (command is p.RemoveActionCommand)
    return command.validate(state);
  else
    return [];
}

List<dynamic> commandToEvents(d.Project state, command) {
  if (command is p.GetProjectCommand)
    return command.commandToEvents(state);
  else if (command is p.AddModelCommand)
    return command.commandToEvents(state);
  else if (command is p.UpdateModelCommand)
    return command.commandToEvents(state);
  else if (command is p.RemoveModelCommand)
    return command.commandToEvents(state);
  else if (command is p.AddEventSourcedEntityCommand)
    return command.commandToEvents(state);
  else if (command is p.UpdateEventSourcedEntityCommand)
    return command.commandToEvents(state);
  else if (command is p.RemoveEventSourcedEntityCommand)
    return command.commandToEvents(state);
  else if (command is p.AddReplicatedEntityCommand)
    return command.commandToEvents(state);
  else if (command is p.UpdateReplicatedEntityCommand)
    return command.commandToEvents(state);
  else if (command is p.RemoveReplicatedEntityCommand)
    return command.commandToEvents(state);
  else if (command is p.AddActionCommand)
    return command.commandToEvents(state);
  else if (command is p.UpdateActionCommand)
    return command.commandToEvents(state);
  else if (command is p.RemoveActionCommand)
    return command.commandToEvents(state);
  else
    return [];
}

bool isEvent(value) =>
    value is p.ModelAddedEvent ||
    value is p.ModelUpdatedEvent ||
    value is p.ModelRemovedEvent ||
    value is p.EventSourcedEntityAddedEvent ||
    value is p.EventSourcedEntityUpdatedEvent ||
    value is p.EventSourcedEntityRemovedEvent ||
    value is p.ReplicatedEntityAddedEvent ||
    value is p.ReplicatedEntityUpdatedEvent ||
    value is p.ReplicatedEntityRemovedEvent ||
    value is p.ActionAddedEvent ||
    value is p.ActionUpdatedEvent ||
    value is p.ActionRemovedEvent;

bool isCommand(value) =>
    value is p.GetProjectCommand ||
    value is p.DeployCommand ||
    value is p.AddModelCommand ||
    value is p.UpdateModelCommand ||
    value is p.RemoveModelCommand ||
    value is p.AddEventSourcedEntityCommand ||
    value is p.UpdateEventSourcedEntityCommand ||
    value is p.RemoveEventSourcedEntityCommand ||
    value is p.AddReplicatedEntityCommand ||
    value is p.UpdateReplicatedEntityCommand ||
    value is p.RemoveReplicatedEntityCommand ||
    value is p.AddActionCommand ||
    value is p.UpdateActionCommand ||
    value is p.RemoveActionCommand;

extension GetProjectCommandHelp on p.GetProjectCommand {
  List<ValidationError> validate(d.Project state) => List.empty();
  List<dynamic> commandToEvents(d.Project state) => [];
}

extension AddModelCommandHelp on p.AddModelCommand {
  List<ValidationError> validate(d.Project state) =>
      (model.hasName() && model.name != "" ? validateModelName(model.name) : [])
        ..addAll(state.models.any((m) => m.name == model.name)
            ? [ValidationErrors.duplicateModelName]
            : [])
        ..addAll(validateDuplicateProperties(model));

  List<dynamic> commandToEvents(d.Project state) {
    final event = p.ModelAddedEvent()..model = model.deepCopy();
    return [event];
  }
}

extension UpdateModelCommandHelp on p.UpdateModelCommand {
  List<ValidationError> validate(d.Project state) =>
      validateModelName(updatedModel.name)
        ..addAll(validateDuplicateProperties(updatedModel));

  List<dynamic> commandToEvents(d.Project state) => [
        p.ModelUpdatedEvent()
          ..originalName = originalName
          ..updatedModel = updatedModel
      ];
}

extension RemoveModelCommandHelp on p.RemoveModelCommand {
  List<ValidationError> validate(d.Project state) =>
      state.models.any((m) => m.name == name)
          ? []
          : [ValidationErrors.nonExistentModel];

  List<dynamic> commandToEvents(d.Project state) =>
      [p.ModelRemovedEvent()..name = name];
}

extension AddEventSourcedEntityCommandHelp on p.AddEventSourcedEntityCommand {
  List<ValidationError> validate(d.Project state) =>
      (entity.hasName() && entity.name != ""
          ? validateEntityName(entity.name)
          : [])
        ..addAll(state.eventSourcedEntities.any((m) => m.name == entity.name)
            ? [ValidationErrors.duplicateEntityName]
            : []);

  List<dynamic> commandToEvents(d.Project state) {
    final event = p.EventSourcedEntityAddedEvent()..entity = entity.deepCopy();
    return [event];
  }
}

extension UpdateEventSourcedEntityCommandHelp
    on p.UpdateEventSourcedEntityCommand {
  List<ValidationError> validate(d.Project state) =>
      validateEntityName(entity.name);

  List<dynamic> commandToEvents(d.Project state) {
    final event = p.EventSourcedEntityUpdatedEvent()
      ..originalName = originalName
      ..entity = entity;
    return [event];
  }
}

extension RemoveEventSourcedEntityCommandHelp
    on p.RemoveEventSourcedEntityCommand {
  List<ValidationError> validate(d.Project state) =>
      state.eventSourcedEntities.any((m) => m.name == name)
          ? []
          : [ValidationErrors.nonExistentEntity];

  List<dynamic> commandToEvents(d.Project state) =>
      [p.EventSourcedEntityRemovedEvent()..name = name];
}

extension AddReplicatedEntityCommandHelp on p.AddReplicatedEntityCommand {
  List<ValidationError> validate(d.Project state) =>
      (entity.hasName() && entity.name != ""
          ? validateEntityName(entity.name)
          : [])
        ..addAll(state.replicatedEntities.any((m) => m.name == entity.name)
            ? [ValidationErrors.duplicateEntityName]
            : []);

  List<dynamic> commandToEvents(d.Project state) {
    final event = p.ReplicatedEntityAddedEvent()..entity = entity.deepCopy();
    return [event];
  }
}

extension UpdateReplicatedEntityCommandHelp on p.UpdateReplicatedEntityCommand {
  List<ValidationError> validate(d.Project state) =>
      validateEntityName(entity.name);

  List<dynamic> commandToEvents(d.Project state) {
    final event = p.ReplicatedEntityUpdatedEvent()
      ..originalName = originalName
      ..entity = entity;
    return [event];
  }
}

extension RemoveReplicatedEntityCommandHelp on p.RemoveReplicatedEntityCommand {
  List<ValidationError> validate(d.Project state) =>
      state.replicatedEntities.any((m) => m.name == name)
          ? []
          : [ValidationErrors.nonExistentEntity];

  List<dynamic> commandToEvents(d.Project state) =>
      [p.ReplicatedEntityRemovedEvent()..name = name];
}

extension AddActionCommandHelp on p.AddActionCommand {
  List<ValidationError> validate(d.Project state) =>
      (action.hasName() && action.name != ""
          ? validateEntityName(action.name)
          : [])
        ..addAll(state.replicatedEntities.any((m) => m.name == action.name)
            ? [ValidationErrors.duplicateEntityName]
            : []);

  List<dynamic> commandToEvents(d.Project state) {
    final event = p.ActionAddedEvent()..action = action.deepCopy();
    return [event];
  }
}

extension UpdateActionCommandHelp on p.UpdateActionCommand {
  List<ValidationError> validate(d.Project state) =>
      validateEntityName(action.name);

  List<dynamic> commandToEvents(d.Project state) {
    final event = p.ActionUpdatedEvent()
      ..originalName = originalName
      ..action = action;
    return [event];
  }
}

extension RemoveActionCommandHelp on p.RemoveActionCommand {
  List<ValidationError> validate(d.Project state) =>
      state.replicatedEntities.any((m) => m.name == name)
          ? []
          : [ValidationErrors.nonExistentEntity];

  List<dynamic> commandToEvents(d.Project state) =>
      [p.ActionRemovedEvent()..name = name];
}

List<ValidationError> validateDuplicateProperties(d.Model model) {
  final propertyNamesList = model.properties.map((p) => p.name).toList();
  final propertyNamesSet = propertyNamesList.toSet();
  if (propertyNamesList.length != propertyNamesSet.length)
    return [ValidationErrors.duplicatePropertyNames];
  else
    return [];
}

final modelNameRegex = RegExp(r"[A-Za-z_]+[A-Za-z0-9_]*");
List<ValidationError> validateModelName(String name) {
  final matchedName = modelNameRegex.stringMatch(name);
  return matchedName == name ? [] : [ValidationErrors.invalidModelName];
}

final propertyNameRegex = RegExp(r"[a-z_]+[A-Za-z0-9_]*");
List<ValidationError> validatePropertyName(String name) {
  final matchedName = propertyNameRegex.stringMatch(name);
  return matchedName == name ? [] : [ValidationErrors.invalidPropertyName];
}

final entityNameRegex = RegExp(r"[A-Za-z_]+[A-Za-z0-9_]*");
List<ValidationError> validateEntityName(String name) {
  final matchedName = entityNameRegex.stringMatch(name);
  return matchedName == name ? [] : [ValidationErrors.invalidEntityName];
}

class ValidationErrors {
  static final invalidModelName =
      ValidationError(0, "Model name must match regex $modelNameRegex");
  static const duplicateModelName =
      const ValidationError(1, "Duplicate model name.");
  static const nonExistentModel = ValidationError(2, "Model does not exist.");
  static final invalidPropertyName =
      ValidationError(3, "Property name must match regex $propertyNameRegex");
  static final duplicatePropertyNames =
      ValidationError(4, "Duplicate property names");
  static final invalidEntityName =
      ValidationError(5, "Entity name must match regex $modelNameRegex");
  static const duplicateEntityName =
      const ValidationError(6, "Duplicate entity name.");
  static const nonExistentEntity = ValidationError(7, "Entity does not exist.");
}
