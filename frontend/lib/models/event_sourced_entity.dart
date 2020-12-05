import 'package:cloudstation/models/model.dart';

class EventSourcedEntity {
  final String name;
  final TypeReference stateType;
  final List<CommandHandler> commandHandlers;
  final List<EventHandler> eventHandlers;
  final int selectedCommandHandlerIndex;
  final int selectedEventHandlerIndex;

  EventSourcedEntity(
      this.name,
      this.stateType,
      this.commandHandlers,
      this.eventHandlers,
      this.selectedCommandHandlerIndex,
      this.selectedEventHandlerIndex);

  EventSourcedEntity withName(String newName) => EventSourcedEntity(
      newName,
      stateType,
      commandHandlers,
      eventHandlers,
      selectedCommandHandlerIndex,
      selectedEventHandlerIndex);

  EventSourcedEntity withStateType(TypeReference newType) => EventSourcedEntity(
      name,
      newType,
      commandHandlers,
      eventHandlers,
      selectedCommandHandlerIndex,
      selectedEventHandlerIndex);

  EventSourcedEntity withSelectedCommandHandlerIndex(int idx) =>
      EventSourcedEntity(name, stateType, commandHandlers, eventHandlers, idx,
          selectedEventHandlerIndex);

  EventSourcedEntity withSelectedEventHandlerIndex(int idx) =>
      EventSourcedEntity(name, stateType, commandHandlers, eventHandlers,
          selectedCommandHandlerIndex, idx);
}

class CommandHandler {
  final TypeReference commandType;
  final TypeReference responseType;
  final String code;

  CommandHandler(this.commandType, this.responseType, this.code);

  CommandHandler withCommandType(TypeReference updatedValue) =>
      CommandHandler(updatedValue, responseType, code);
  CommandHandler withResponseType(TypeReference updatedValue) =>
      CommandHandler(commandType, updatedValue, code);
  CommandHandler withCode(String updatedValue) =>
      CommandHandler(commandType, responseType, updatedValue);
}

class EventHandler {
  final TypeReference eventType;
  final String code;

  EventHandler(this.eventType, this.code);

  EventHandler withEventType(TypeReference updatedValue) =>
      EventHandler(updatedValue, code);
  EventHandler withCode(String updatedValue) =>
      EventHandler(eventType, updatedValue);
}
