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
        commandHandlersEditor(),
        eventHandlersEditor(),
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
      child: TypeChooser.fromProjectState(
        state: projectState,
        selectedType: initialEntity.stateType,
        onTypeUpdated: _onEntityTypeChanged,
      ),
    );
  }

  Widget commandHandlersEditor() {
    final child = LeftRight(
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
      child: LimitedBox(child: child, maxHeight: 600),
    );
  }

  Widget buildCommandEditor(int idx) {
    final commandTypeEditor = Panel(
      title: "Command Type",
      child: TypeChooser.fromProjectState(
        state: projectState,
        selectedType: initialEntity.commandHandlers[idx].commandType,
        onTypeUpdated: (updatedType) => _onCommandTypeChanged(idx, updatedType),
      ),
    );
    final responseTypeEditor = Panel(
      title: "Response Type",
      child: TypeChooser.fromProjectState(
        state: projectState,
        selectedType: initialEntity.commandHandlers[idx].responseType,
        onTypeUpdated: (updatedType) =>
            _onCommandResponseTypeChanged(idx, updatedType),
      ),
    );

    final codeEditor = Panel(
      title: "Code",
      child: SimpleCodeEditor(
        code: initialEntity.commandHandlers[idx].code,
        language: "scala",
        onCodeChanged: (_, newCode) => _onCommandCodeChanged(idx, newCode),
      ),
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

  Widget eventHandlersEditor() {
    final child = LeftRight(
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
      child: LimitedBox(child: child, maxHeight: 600),
    );
  }

  Widget buildEventEditor(int idx) {
    final eventTypeEditor = Panel(
      title: "Event Type",
      child: TypeChooser.fromProjectState(
        state: projectState,
        selectedType: initialEntity.eventHandlers[idx].eventType,
        onTypeUpdated: (updatedType) => _onEventTypeChanged(idx, updatedType),
      ),
    );

    final codeEditor = Panel(
      title: "Code",
      child: SimpleCodeEditor(
        code: initialEntity.eventHandlers[idx].code,
        language: "scala",
        onCodeChanged: (_, newCode) => _onEventCodeChanged(idx, newCode),
      ),
    );

    return Column(
      children: [
        eventTypeEditor,
        codeEditor,
      ],
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

  _onCommandCodeChanged(int idx, String updatedCode) {
    onEntityUpdated(initialEntity
      ..commandHandlers[idx] =
          initialEntity.commandHandlers[idx].withCode(updatedCode));
  }

  _onCommandTypeChanged(int idx, TypeReference updatedType) {
    onEntityUpdated(initialEntity
      ..commandHandlers[idx] =
          initialEntity.commandHandlers[idx].withCommandType(updatedType));
  }

  _onCommandResponseTypeChanged(int idx, TypeReference updatedType) {
    onEntityUpdated(initialEntity
      ..commandHandlers[idx] =
          initialEntity.commandHandlers[idx].withResponseType(updatedType));
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

  _onEventTypeChanged(int idx, TypeReference updatedType) {
    onEntityUpdated(initialEntity
      ..eventHandlers[idx] =
          initialEntity.eventHandlers[idx].withEventType(updatedType));
  }

  _onEventCodeChanged(int idx, String updatedCode) {
    onEntityUpdated(initialEntity
      ..eventHandlers[idx] =
          initialEntity.eventHandlers[idx].withCode(updatedCode));
  }
}
