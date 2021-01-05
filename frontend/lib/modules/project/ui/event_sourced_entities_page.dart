import 'package:cloudstation/models/domain_support.dart';
import 'package:cloudstation_protocols/generated/domain.pb.dart' as d;
import 'package:cloudstation_protocols/generated/project.pb.dart' as p;
import 'package:cloudstation/ui/widgets/code_editor.dart';
import 'package:cloudstation/ui/widgets/panel.dart';
import 'package:cloudstation/ui/widgets/scaffolds.dart';
import 'package:cloudstation/ui/widgets/single_value_form.dart';
import 'package:cloudstation/ui/widgets/type_chooser.dart';
import 'package:flutter/material.dart';
import 'package:cloudstation/models/project_state.dart';
import 'package:flutter_modular/flutter_modular.dart';

class EventSourcedEntitiesPage extends StatefulWidget {
  final ProjectState state;
  final Function(dynamic) addEvent;
  final String selectedEntityName;
  final d.TypeReference selectedCommandHandler;
  final d.TypeReference selectedEventHandler;

  const EventSourcedEntitiesPage(
      {Key key,
      @required this.state,
      @required this.addEvent,
      @required this.selectedEntityName,
      @required this.selectedCommandHandler,
      @required this.selectedEventHandler})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _EventSourcedEntitiesPageState();

  int get selectedEntityIndex {
    if (selectedEntityName == null) return null;

    final index = state.project.eventSourcedEntities
        .indexWhere((e) => e.name == selectedEntityName);

    if (index >= 0)
      return index;
    else
      return null;
  }
}

class _EventSourcedEntitiesPageState extends State<EventSourcedEntitiesPage> {
  @override
  Widget build(BuildContext context) {
    return LeftRight(
      leftTitle: "Entities",
      onNewItem: () => widget.addEvent(p.AddEventSourcedEntityCommand()),
      itemCount: widget.state.project.eventSourcedEntities.length,
      itemBuilder: buildItemTile,
      emptySelection: emptySelection,
      itemEditorBuilder: buildItemEditor,
      currentIndex: widget.selectedEntityIndex,
      itemSelected: (idx) => Modular.link.pushNamed(
          "/${widget.state.project.projectId}/event-sourced-entities/${widget.state.project.eventSourcedEntities[idx].name}"),
    );
  }

  Widget buildItemTile(BuildContext context, int idx) {
    return Text(widget.state.project.eventSourcedEntities[idx].name);
  }

  Widget buildItemEditor(BuildContext context, int idx) {
    return EventSourcedEntityEditor(
      initialEntity: widget.state.project.eventSourcedEntities[idx],
      projectState: widget.state,
      onEntityUpdated: (updated) => widget.addEvent(
        p.UpdateEventSourcedEntityCommand()
          ..originalName = widget.state.project.eventSourcedEntities[idx].name
          ..entity = updated,
      ),
      selectedCommandHandler: widget.selectedCommandHandler,
      selectedEventHandler: widget.selectedEventHandler,
    );
  }

  static const Widget emptySelection = Center(child: Text("Select an Entity"));
}

class EventSourcedEntityEditor extends StatelessWidget {
  final d.EventSourcedEntity initialEntity;
  final ProjectState projectState;
  final Function(d.EventSourcedEntity) onEntityUpdated;
  final d.TypeReference selectedCommandHandler;
  final d.TypeReference selectedEventHandler;

  const EventSourcedEntityEditor({
    Key key,
    @required this.initialEntity,
    @required this.projectState,
    @required this.onEntityUpdated,
    @required this.selectedCommandHandler,
    @required this.selectedEventHandler,
  }) : super(key: key);

  int get selectedCommandHandlerIndex {
    if (selectedCommandHandler == null) return null;
    final index = initialEntity.commandHandlers
        .indexWhere((e) => e.commandType.wrap == selectedCommandHandler.wrap);

    return index >= 0 ? index : null;
  }

  int get selectedEventHandlerIndex {
    if (selectedEventHandler == null) return null;
    final index = initialEntity.eventHandlers
        .indexWhere((e) => e.eventType.wrap == selectedEventHandler.wrap);

    return index >= 0 ? index : null;
  }

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
        availableTypes: projectState.project.availableTypes,
        selectedType: initialEntity.stateType,
        onTypeUpdated: _onEntityTypeChanged,
      ),
    );
  }

  Widget commandHandlersEditor(BuildContext context) {
    final child = LeftRight(
      leftTitle: "Commands",
      currentIndex: selectedCommandHandlerIndex,
      emptySelection: const Center(child: Text("Select a Command")),
      itemBuilder: commandListTile,
      itemCount: initialEntity.commandHandlers.length,
      itemEditorBuilder: (context, idx) => buildCommandEditor(idx),
      itemSelected: _onCommandHandlerSelected,
      onNewItem: _onCommandHandlerAdded,
    );

    return Panel(
      title: "Command Handlers",
      initiallyExpanded: selectedCommandHandler != null,
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
      availableTypes: projectState.project.availableTypes,
    );
  }

  Widget eventHandlersEditor(BuildContext context) {
    final child = LeftRight(
      leftTitle: "Events",
      currentIndex: selectedEventHandlerIndex,
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
      initiallyExpanded: selectedEventHandler != null,
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
      availableTypes: projectState.project.availableTypes,
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

  _onEntityTypeChanged(d.TypeReference newType) {
    onEntityUpdated(initialEntity.withStateType(newType));
  }

  _onCommandHandlerSelected(int idx) {
    final typeReference = initialEntity.commandHandlers[idx].commandType;
    Modular.link.pushNamed(
        "/${projectState.project.projectId}/event-sourced-entities/${initialEntity.name}/commands/${typeReference.name}");
  }

  _onCommandHandlerAdded() {
    onEntityUpdated(
      initialEntity
        ..commandHandlers.add(d.EventSourcedEntity_CommandHandler()
          ..commandType = (d.TypeReference()
            ..static =
                (d.TypeReference_Static()..staticType = d.StaticType.INT32))
          ..responseType = (d.TypeReference()
            ..static =
                (d.TypeReference_Static()..staticType = d.StaticType.INT32))
          ..codeBlocks["body"] = ""),
    );
  }

  _onEventHandlerSelected(int idx) {
    final typeReference = initialEntity.eventHandlers[idx].eventType;
    Modular.link.pushNamed(
        "/${projectState.project.projectId}/event-sourced-entities/${initialEntity.name}/events/${typeReference.name}");
  }

  _onEventHandlerAdded() {
    onEntityUpdated(
      initialEntity
        ..eventHandlers.add(d.EventSourcedEntity_EventHandler()
          ..eventType = (d.TypeReference()
            ..static =
                (d.TypeReference_Static()..staticType = d.StaticType.INT32))
          ..codeBlocks["body"] = ""),
    );
  }
}

class CommandEditor extends StatelessWidget {
  final d.EventSourcedEntity_CommandHandler commandHandler;
  final d.TypeReference stateType;
  final Function(d.EventSourcedEntity_CommandHandler) onCommandUpdated;
  final List<d.TypeReference> availableTypes;

  const CommandEditor(
      {Key key,
      @required this.commandHandler,
      @required this.stateType,
      @required this.onCommandUpdated,
      @required this.availableTypes})
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
        WritableCodeItem(commandHandler.codeBlocks["body"],
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
    onCommandUpdated(commandHandler..codeBlocks["body"] = updatedCode);
  }

  _onCommandTypeChanged(d.TypeReference updatedType) {
    onCommandUpdated(commandHandler.withCommandType(updatedType));
  }

  _onCommandResponseTypeChanged(d.TypeReference updatedType) {
    onCommandUpdated(commandHandler.withResponseType(updatedType));
  }
}

class EventHandlerEditor extends StatelessWidget {
  final d.EventSourcedEntity_EventHandler eventHandler;
  final d.TypeReference stateType;
  final Function(d.EventSourcedEntity_EventHandler) onEventUpdated;
  final List<d.TypeReference> availableTypes;

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
        WritableCodeItem(eventHandler.codeBlocks["body"],
            (_, newCode) => _onEventCodeChanged(newCode)),
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

  _onEventTypeChanged(d.TypeReference updatedType) {
    onEventUpdated(eventHandler.withEventType(updatedType));
  }

  _onEventCodeChanged(String updatedCode) {
    onEventUpdated(eventHandler..codeBlocks["body"] = updatedCode);
  }
}
