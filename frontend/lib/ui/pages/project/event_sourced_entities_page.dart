import 'package:cloudstation/logic/project_bloc.dart';
import 'package:cloudstation/models/event_sourced_entity.dart';
import 'package:cloudstation/models/model.dart';
import 'package:cloudstation/ui/widgets/code_editor.dart';
import 'package:cloudstation/ui/widgets/panel.dart';
import 'package:cloudstation/ui/widgets/scaffolds.dart';
import 'package:cloudstation/ui/widgets/single_value_form.dart';
import 'package:cloudstation/ui/widgets/type_chooser.dart';
import 'package:flutter/material.dart';
import 'package:cloudstation/models/projects/project_events.dart' as events;
import 'package:cloudstation/models/projects/project_states.dart' as states;
import 'package:flutter_bloc/flutter_bloc.dart';

class EventSourcedEntitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectBloc, states.ProjectState>(
      builder: (context, state) => EventSourcedEntitiesPageImpl(
        state: state as states.LoadedProjectState,
        addEvent: context.watch<ProjectBloc>().add,
      ),
    );
  }
}

class EventSourcedEntitiesPageImpl extends StatefulWidget {
  final states.LoadedProjectState state;
  final Function(events.ProjectEvent) addEvent;

  const EventSourcedEntitiesPageImpl({Key key, this.state, this.addEvent})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _EventSourcedEntitiesPageImplState();
}

class _EventSourcedEntitiesPageImplState
    extends State<EventSourcedEntitiesPageImpl> {
  @override
  Widget build(BuildContext context) {
    return LeftRight(
      leftTitle: "Entities",
      onNewItem: () => widget.addEvent(events.AddEventSourcedEntity()),
      itemCount: widget.state.eventSourcedEntities.length,
      itemBuilder: buildItemTile,
      emptySelection: emptySelection,
      itemEditorBuilder: buildItemEditor,
      currentIndex: widget.state.selectedEntityIndex,
      itemSelected: (idx) =>
          widget.addEvent(events.SelectEventSourcedEntity(idx)),
    );
  }

  Widget buildItemTile(BuildContext context, int idx) {
    return Text(widget.state.eventSourcedEntities[idx].name);
  }

  Widget buildItemEditor(BuildContext context, int idx) {
    return EventSourcedEntityEditor(
      initialEntity: widget.state.eventSourcedEntities[idx],
      projectState: widget.state,
      onEntityUpdated: (updated) => widget.addEvent(
          events.UpdatedEventSourcedEntity(
              widget.state.eventSourcedEntities[idx], updated)),
    );
  }

  static const Widget emptySelection = Center(child: Text("Select an Entity"));
}

class EventSourcedEntityEditor extends StatelessWidget {
  final EventSourcedEntity initialEntity;
  final states.LoadedProjectState projectState;
  final Function(EventSourcedEntity) onEntityUpdated;

  const EventSourcedEntityEditor(
      {Key key, this.initialEntity, this.projectState, this.onEntityUpdated})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: entityNameEditor()),
            Expanded(child: entityTypeEditor()),
          ],
        ),
        commandHandlersEditor(context),
        eventHandlersEditor(context),
      ],
    );
  }

  Widget entityNameEditor() {
    return Panel(
      title: "Name",
      hint: Text(initialEntity.name),
      child: SingleValueForm(
        onValueSaved: _onEntityRenamed,
        initialValue: initialEntity.name,
      ),
    );
  }

  Widget entityTypeEditor() {
    return Panel(
      title: "State Type",
      hint: Text(initialEntity.stateType.name),
      child: TypeChooser(
        availableTypes: projectState.availableTypes,
        selectedType: initialEntity.stateType,
        onTypeUpdated: _onEntityTypeChanged,
      ),
    );
  }

  Widget commandHandlersEditor(BuildContext context) {
    final child = LeftRight(
      leftTitle: "Commands",
      currentIndex: initialEntity.selectedCommandHandlerIndex,
      emptySelection: const Center(child: Text("Select a Command")),
      itemBuilder: commandListTile,
      itemCount: initialEntity.commandHandlers.length,
      itemEditorBuilder: (context, idx) => buildCommandEditor(idx),
      itemSelected: _onCommandHandlerSelected,
      onNewItem: _onCommandHandlerAdded,
    );

    return Panel(
      title: "Command Handlers",
      initiallyExpanded: initialEntity.selectedCommandHandlerIndex != null,
      hint: Text(initialEntity.commandHandlers
          .map((h) => h.commandType.name)
          .join(", ")),
      child: LimitedBox(
        child: child,
        maxHeight: MediaQuery.of(context).size.height * 0.8,
      ),
    );
  }

  Widget buildCommandEditor(int idx) {
    return CommandEditor(
      commandHandler: initialEntity.commandHandlers[idx],
      stateType: initialEntity.stateType,
      onCommandUpdated: (updated) =>
          onEntityUpdated(initialEntity..commandHandlers[idx] = updated),
      availableTypes: projectState.availableTypes,
    );
  }

  Widget eventHandlersEditor(BuildContext context) {
    final child = LeftRight(
      leftTitle: "Events",
      currentIndex: initialEntity.selectedEventHandlerIndex,
      emptySelection: const Center(child: Text("Select an Event Handler")),
      itemBuilder: eventListTile,
      itemCount: initialEntity.eventHandlers.length,
      itemEditorBuilder: (context, idx) => buildEventEditor(idx),
      itemSelected: _onEventHandlerSelected,
      onNewItem: _onEventHandlerAdded,
    );

    return Panel(
      title: "Event Handlers",
      hint: Text(initialEntity.commandHandlers
          .map((h) => h.commandType.name)
          .join(", ")),
      initiallyExpanded: initialEntity.selectedEventHandlerIndex != null,
      child: LimitedBox(
        child: child,
        maxHeight: MediaQuery.of(context).size.height * 0.8,
      ),
    );
  }

  Widget buildEventEditor(int idx) {
    return EventHandlerEditor(
      eventHandler: initialEntity.eventHandlers[idx],
      stateType: initialEntity.stateType,
      onEventUpdated: (updated) =>
          onEntityUpdated(initialEntity..eventHandlers[idx] = updated),
      availableTypes: projectState.availableTypes,
    );
  }

  Widget commandListTile(BuildContext context, int idx) {
    final handler = initialEntity.commandHandlers[idx];
    return Text(handler.commandType.name);
  }

  Widget eventListTile(BuildContext context, int idx) {
    final handler = initialEntity.eventHandlers[idx];
    return Text(handler.eventType.name);
  }

  _onEntityRenamed(String newName) {
    onEntityUpdated(initialEntity.withName(newName));
  }

  _onEntityTypeChanged(TypeReference newType) {
    onEntityUpdated(initialEntity.withStateType(newType));
  }

  _onCommandHandlerSelected(int idx) {
    onEntityUpdated(initialEntity.withSelectedCommandHandlerIndex(idx));
  }

  _onCommandHandlerAdded() {
    onEntityUpdated(
      initialEntity
        ..commandHandlers.add(
          CommandHandler(
            StaticTypeReference(StaticType.int32),
            StaticTypeReference(StaticType.int32),
            "",
          ),
        ),
    );
  }

  _onEventHandlerSelected(int idx) {
    onEntityUpdated(initialEntity.withSelectedEventHandlerIndex(idx));
  }

  _onEventHandlerAdded() {
    onEntityUpdated(
      initialEntity
        ..eventHandlers.add(
          EventHandler(
            StaticTypeReference(StaticType.int32),
            "",
          ),
        ),
    );
  }
}

class CommandEditor extends StatelessWidget {
  final CommandHandler commandHandler;
  final TypeReference stateType;
  final Function(CommandHandler) onCommandUpdated;
  final List<TypeReference> availableTypes;

  const CommandEditor(
      {Key key,
      this.commandHandler,
      this.stateType,
      this.onCommandUpdated,
      this.availableTypes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final commandTypeEditor = Panel(
      title: "Command Type",
      child: TypeChooser(
        availableTypes: availableTypes,
        selectedType: commandHandler.commandType,
        onTypeUpdated: (updatedType) => _onCommandTypeChanged(updatedType),
      ),
    );
    final responseTypeEditor = Panel(
      title: "Response Type",
      child: TypeChooser(
        availableTypes: availableTypes,
        selectedType: commandHandler.responseType,
        onTypeUpdated: (updatedType) =>
            _onCommandResponseTypeChanged(updatedType),
      ),
    );

    final codeEditor = Panel(
      title: "Code",
      child: MultiCodeEditor(language: "scala", items: [
        ReadOnlyCodeItem(
          [
            "class ${commandHandler.commandType.name}Handler {",
            "",
            "    def apply(state: ${stateType.name}, command: ${commandHandler.commandType.name}): Future[${commandHandler.responseType.name}] = {"
          ].join("\n"),
        ),
        WritableCodeItem(commandHandler.code,
            (_, newCode) => _onCommandCodeChanged(newCode)),
        ReadOnlyCodeItem(
          [
            "    }",
            "}",
          ].join("\n"),
        )
      ]),
    );

    return Column(
      children: [
        Row(
          children: [
            Expanded(child: commandTypeEditor),
            Expanded(child: responseTypeEditor),
          ],
        ),
        codeEditor,
      ],
    );
  }

  _onCommandCodeChanged(String updatedCode) {
    onCommandUpdated(commandHandler.withCode(updatedCode));
  }

  _onCommandTypeChanged(TypeReference updatedType) {
    onCommandUpdated(commandHandler.withCommandType(updatedType));
  }

  _onCommandResponseTypeChanged(TypeReference updatedType) {
    onCommandUpdated(commandHandler.withResponseType(updatedType));
  }
}

class EventHandlerEditor extends StatelessWidget {
  final EventHandler eventHandler;
  final TypeReference stateType;
  final Function(EventHandler) onEventUpdated;
  final List<TypeReference> availableTypes;

  const EventHandlerEditor(
      {Key key,
      this.eventHandler,
      this.stateType,
      this.onEventUpdated,
      this.availableTypes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventTypeEditor = Panel(
      title: "Event Type",
      child: TypeChooser(
        availableTypes: availableTypes,
        selectedType: eventHandler.eventType,
        onTypeUpdated: (updatedType) => _onEventTypeChanged(updatedType),
      ),
    );

    final codeEditor = Panel(
      title: "Code",
      child: MultiCodeEditor(language: "scala", items: [
        ReadOnlyCodeItem(
          [
            "class ${eventHandler.eventType.name}Handler {",
            "",
            "    def apply(state: ${stateType.name}, event: ${eventHandler.eventType.name}): ${stateType.name} = {"
          ].join("\n"),
        ),
        WritableCodeItem(
            eventHandler.code, (_, newCode) => _onEventCodeChanged(newCode)),
        ReadOnlyCodeItem(
          [
            "    }",
            "}",
          ].join("\n"),
        )
      ]),
    );

    return Column(
      children: [
        eventTypeEditor,
        codeEditor,
      ],
    );
  }

  _onEventTypeChanged(TypeReference updatedType) {
    onEventUpdated(eventHandler.withEventType(updatedType));
  }

  _onEventCodeChanged(String updatedCode) {
    onEventUpdated(eventHandler.withCode(updatedCode));
  }
}
