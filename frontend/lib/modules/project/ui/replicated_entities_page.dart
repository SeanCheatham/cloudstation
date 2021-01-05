import 'package:cloudstation/models/domain_support.dart';
import 'package:cloudstation/ui/widgets/code_editor.dart';
import 'package:cloudstation/ui/widgets/replicated_data_chooser.dart';
import 'package:cloudstation/ui/widgets/panel.dart';
import 'package:cloudstation/ui/widgets/scaffolds.dart';
import 'package:cloudstation/ui/widgets/single_value_form.dart';
import 'package:cloudstation/ui/widgets/type_chooser.dart';
import 'package:flutter/material.dart';
import 'package:cloudstation/models/project_state.dart';
import 'package:cloudstation_protocols/generated/domain.pb.dart' as d;
import 'package:cloudstation_protocols/generated/project.pb.dart' as p;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:protobuf/protobuf.dart';

class ReplicatedEntitiesPage extends StatefulWidget {
  final ProjectState state;
  final Function(dynamic) addEvent;
  final String selectedEntityName;
  final d.TypeReference selectedCommandHandler;

  const ReplicatedEntitiesPage(
      {Key key,
      @required this.state,
      @required this.addEvent,
      @required this.selectedEntityName,
      @required this.selectedCommandHandler})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _ReplicatedEntitiesPageState();

  int get selectedEntityIndex {
    if (selectedEntityName == null) return null;

    final index = state.project.replicatedEntities
        .indexWhere((e) => e.name == selectedEntityName);

    if (index >= 0)
      return index;
    else
      return null;
  }
}

class _ReplicatedEntitiesPageState extends State<ReplicatedEntitiesPage> {
  @override
  Widget build(BuildContext context) {
    return LeftRight(
      leftTitle: "Entites",
      onNewItem: () => widget.addEvent(p.AddReplicatedEntityCommand()),
      itemCount: widget.state.project.replicatedEntities.length,
      itemBuilder: buildItemTile,
      emptySelection: emptySelection,
      itemEditorBuilder: buildItemEditor,
      currentIndex: widget.selectedEntityIndex,
      itemSelected: (idx) => Modular.link.pushNamed(
          "/${widget.state.project.projectId}/replicated-entities/${widget.state.project.replicatedEntities[idx].name}"),
    );
  }

  Widget buildItemTile(BuildContext context, int idx) {
    return Text(widget.state.project.replicatedEntities[idx].name);
  }

  Widget buildItemEditor(BuildContext context, int idx) {
    return ReplicatedEntityEditor(
      initialEntity: widget.state.project.replicatedEntities[idx],
      projectState: widget.state,
      onEntityUpdated: (updated) => widget.addEvent(
        p.UpdateReplicatedEntityCommand()
          ..originalName = widget.state.project.replicatedEntities[idx].name
          ..entity = updated,
      ),
      selectedCommandHandler: widget.selectedCommandHandler,
    );
  }

  static const Widget emptySelection = Center(child: Text("Select an Entity"));
}

class ReplicatedEntityEditor extends StatelessWidget {
  final d.ReplicatedEntity initialEntity;
  final ProjectState projectState;
  final Function(d.ReplicatedEntity) onEntityUpdated;
  final d.TypeReference selectedCommandHandler;

  const ReplicatedEntityEditor(
      {Key key,
      @required this.initialEntity,
      @required this.projectState,
      @required this.onEntityUpdated,
      @required this.selectedCommandHandler})
      : super(key: key);

  int get selectedCommandHandlerIndex {
    if (selectedCommandHandler == null) return null;
    final index = initialEntity.commandHandlers
        .indexWhere((e) => e.commandType.wrap == selectedCommandHandler.wrap);

    return index >= 0 ? index : null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: entityNameEditor()),
            Expanded(child: entityDataEditor()),
          ],
        ),
        commandHandlersEditor(context),
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

  Widget entityDataEditor() {
    return Panel(
      title: "Replicated Data Type",
      hint: Text(initialEntity.replicatedData.runtimeType.toString()),
      child: ReplicatedDataChooser.fromProjectState(
        state: projectState,
        selectedReplicatedData: initialEntity.replicatedData,
        onReplicatedDataUpdated: _onReplicatedDataUpdated,
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
      initiallyExpanded: selectedCommandHandlerIndex != null,
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
      onCommandUpdated: (updated) => onEntityUpdated(
          initialEntity.deepCopy()..commandHandlers[idx] = updated),
      replicatedData: initialEntity.replicatedData,
      availableTypes: projectState.project.availableTypes,
    );
  }

  Widget commandListTile(BuildContext context, int idx) {
    final handler = initialEntity.commandHandlers[idx];
    return Text(handler.commandType.name);
  }

  _onEntityRenamed(String newName) {
    onEntityUpdated(initialEntity.withName(newName));
  }

  _onReplicatedDataUpdated(d.ReplicatedData newType) {
    onEntityUpdated(initialEntity.withReplicatedData(newType));
  }

  _onCommandHandlerSelected(int idx) {
    final typeReference = initialEntity.commandHandlers[idx].commandType;
    Modular.link.pushNamed(
        "/${projectState.project.projectId}/replicated-entities/${initialEntity.name}/commands/${typeReference.name}");
  }

  _onCommandHandlerAdded() {
    onEntityUpdated(
      initialEntity
        ..commandHandlers.add(
          d.ReplicatedEntity_CommandHandler()
            ..commandType = (d.TypeReference()
              ..static =
                  (d.TypeReference_Static()..staticType = d.StaticType.INT32))
            ..codeBlocks["body"] = "",
        ),
    );
  }
}

class CommandEditor extends StatelessWidget {
  final d.ReplicatedEntity_CommandHandler commandHandler;
  final Function(d.ReplicatedEntity_CommandHandler) onCommandUpdated;
  final d.ReplicatedData replicatedData;
  final List<d.TypeReference> availableTypes;

  const CommandEditor(
      {Key key,
      @required this.commandHandler,
      @required this.onCommandUpdated,
      @required this.replicatedData,
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

    final codeEditor = Panel(
      title: "Code",
      child: MultiCodeEditor(language: "scala", items: [
        ReadOnlyCodeItem(
          [
            "class ${commandHandler.commandType.name}Handler {",
            "",
            "    def apply(state: ${replicatedData.name}, command: ${commandHandler.commandType.name}): ${replicatedData.name} = {"
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
        commandTypeEditor,
        codeEditor,
      ],
    );
  }

  _onCommandCodeChanged(String updatedCode) {
    onCommandUpdated(commandHandler.withCode("body", updatedCode));
  }

  _onCommandTypeChanged(d.TypeReference updatedType) {
    onCommandUpdated(commandHandler.withCommandType(updatedType));
  }
}
