import 'package:cloudstation/logic/project_bloc.dart';
import 'package:cloudstation/models/crdt_entity.dart';
import 'package:cloudstation/models/model.dart';
import 'package:cloudstation/ui/widgets/code_editor.dart';
import 'package:cloudstation/ui/widgets/crdt_chooser.dart';
import 'package:cloudstation/ui/widgets/panel.dart';
import 'package:cloudstation/ui/widgets/scaffolds.dart';
import 'package:cloudstation/ui/widgets/single_value_form.dart';
import 'package:cloudstation/ui/widgets/type_chooser.dart';
import 'package:flutter/material.dart';
import 'package:cloudstation/models/projects/project_events.dart' as events;
import 'package:cloudstation/models/projects/project_states.dart' as states;
import 'package:flutter_bloc/flutter_bloc.dart';

class CRDTEntitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectBloc, states.ProjectState>(
      builder: (context, state) => CRDTEntitiesPageImpl(
        state: state as states.LoadedProjectState,
        addEvent: context.watch<ProjectBloc>().add,
      ),
    );
  }
}

class CRDTEntitiesPageImpl extends StatefulWidget {
  final states.LoadedProjectState state;
  final Function(events.ProjectEvent) addEvent;

  const CRDTEntitiesPageImpl({Key key, this.state, this.addEvent})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _CRDTEntitiesPageImplState();
}

class _CRDTEntitiesPageImplState extends State<CRDTEntitiesPageImpl> {
  @override
  Widget build(BuildContext context) {
    return LeftRight(
      onNewItem: () => widget.addEvent(events.AddCRDTEntity()),
      itemCount: widget.state.crdtEntities.length,
      itemBuilder: buildItemTile,
      emptySelection: emptySelection,
      itemEditorBuilder: buildItemEditor,
      currentIndex: widget.state.selectedCrdtIndex,
      itemSelected: (idx) => widget.addEvent(events.SelectCRDTEntity(idx)),
    );
  }

  Widget buildItemTile(BuildContext context, int idx) {
    return Text(widget.state.crdtEntities[idx].name);
  }

  Widget buildItemEditor(BuildContext context, int idx) {
    return CRDTEntityEditor(
      initialEntity: widget.state.crdtEntities[idx],
      projectState: widget.state,
      onEntityUpdated: (updated) => widget.addEvent(
          events.UpdateCRDTEntity(widget.state.crdtEntities[idx], updated)),
    );
  }

  static const Widget emptySelection = Center(child: Text("Select an Entity"));
}

class CRDTEntityEditor extends StatelessWidget {
  final CRDTEntity initialEntity;
  final states.LoadedProjectState projectState;
  final Function(CRDTEntity) onEntityUpdated;

  const CRDTEntityEditor(
      {Key key, this.initialEntity, this.projectState, this.onEntityUpdated})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: entityNameEditor()),
            Expanded(child: entityCRDTEditor()),
          ],
        ),
        commandHandlersEditor(),
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

  Widget entityCRDTEditor() {
    return Panel(
      title: "CRDT Type",
      hint: Text(initialEntity.crdt.runtimeType.toString()),
      child: CRDTChooser.fromProjectState(
        state: projectState,
        selectedCRDT: initialEntity.crdt,
        onCRDTUpdated: _onEntityCrdtUpdated,
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
        commandTypeEditor,
        codeEditor,
      ],
    );
  }

  Widget commandListTile(BuildContext context, int idx) {
    final handler = initialEntity.commandHandlers[idx];
    return Text(handler.commandType.name);
  }

  _onEntityRenamed(String newName) {
    onEntityUpdated(initialEntity.withName(newName));
  }

  _onEntityCrdtUpdated(CRDT newType) {
    onEntityUpdated(initialEntity.withCRDT(newType));
  }

  _onCommandHandlerSelected(int idx) {
    onEntityUpdated(initialEntity.withSelectedCommandHandlerIndex(idx));
  }

  _onCommandHandlerAdded() {
    onEntityUpdated(
      initialEntity
        ..commandHandlers.add(
          CRDTCommandHandler(
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
}
