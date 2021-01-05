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
import 'package:protobuf/protobuf.dart';

class ActionsPage extends StatefulWidget {
  final ProjectState state;
  final Function(dynamic) addEvent;
  final String selectedEntityName;

  const ActionsPage({
    Key key,
    @required this.state,
    @required this.addEvent,
    @required this.selectedEntityName,
  }) : super(key: key);

  d.Action get selectedEntity => state.project.actions
      .firstWhere((a) => a.name == selectedEntityName, orElse: () => null);

  @override
  State<StatefulWidget> createState() => _ActionsPageState();

  int get selectedEntityIndex {
    if (selectedEntityName == null) return null;

    final index =
        state.project.actions.indexWhere((e) => e.name == selectedEntityName);

    if (index >= 0)
      return index;
    else
      return null;
  }
}

class _ActionsPageState extends State<ActionsPage> {
  @override
  Widget build(BuildContext context) {
    return LeftRight(
      leftTitle: "Actions",
      onNewItem: () => widget.addEvent(p.AddActionCommand()),
      itemCount: widget.state.project.actions.length,
      itemBuilder: buildItemTile,
      emptySelection: emptySelection,
      itemEditorBuilder: buildItemEditor,
      currentIndex: widget.selectedEntityIndex,
      itemSelected: (idx) => Modular.link.pushNamed(
          "/${widget.state.project.projectId}/actions/${widget.state.project.actions[idx].name}"),
    );
  }

  Widget buildItemTile(BuildContext context, int idx) {
    return Text(widget.state.project.actions[idx].name);
  }

  Widget buildItemEditor(BuildContext context, int idx) {
    return ActionEditor(
      initialEntity: widget.selectedEntity,
      projectState: widget.state,
      onEntityUpdated: (updated) => widget.addEvent(
        p.UpdateActionCommand()
          ..originalName = widget.state.project.actions[idx].name
          ..action = updated,
      ),
    );
  }

  static const Widget emptySelection = Center(child: Text("Select an Entity"));
}

class ActionEditor extends StatelessWidget {
  final d.Action initialEntity;
  final ProjectState projectState;
  final Function(d.Action) onEntityUpdated;

  const ActionEditor({
    Key key,
    @required this.initialEntity,
    @required this.projectState,
    @required this.onEntityUpdated,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        entityNameEditor(context),
        Row(
          children: [
            Expanded(child: commandTypeEditor(context)),
            Expanded(child: responseTypeEditor(context)),
          ],
        ),
        LimitedBox(
          child: codeEditor(context),
          maxHeight: MediaQuery.of(context).size.height * 0.8,
        )
      ],
    );
  }

  Widget entityNameEditor(BuildContext context) {
    return Panel(
      title: "Name",
      hint: Text(initialEntity.name),
      child: SingleValueForm(
        onValueSaved: _onEntityRenamed,
        initialValue: initialEntity.name,
      ),
    );
  }

  Widget commandTypeEditor(BuildContext context) => Panel(
        title: "Command Type",
        child: TypeChooser(
          availableTypes: projectState.project.availableTypes,
          selectedType: initialEntity.commandType,
          onTypeUpdated: (updatedType) => _onCommandTypeChanged(updatedType),
        ),
      );

  Widget responseTypeEditor(BuildContext context) => Panel(
        title: "Response Type",
        child: TypeChooser(
          availableTypes: projectState.project.availableTypes,
          selectedType: initialEntity.responseType,
          onTypeUpdated: (updatedType) => _onResponseTypeChanged(updatedType),
        ),
      );

  Widget codeEditor(BuildContext context) => Panel(
        title: "Code",
        child: MultiCodeEditor(language: "scala", items: [
          ReadOnlyCodeItem(
            [
              "class ${initialEntity.name} {",
              "",
              "    def apply(command: ${initialEntity.commandType.name}): Future[${initialEntity.responseType.name}] = {"
            ].join("\n"),
          ),
          WritableCodeItem(initialEntity.codeBlocks["body"],
              (_, newCode) => _onCodeChanged(newCode)),
          ReadOnlyCodeItem(
            [
              "    }",
              "}",
            ].join("\n"),
          )
        ]),
      );

  _onEntityRenamed(String newName) {
    onEntityUpdated(initialEntity.withName(newName));
    Modular.link
        .pushNamed("/${projectState.project.projectId}/actions/$newName");
  }

  _onCommandTypeChanged(d.TypeReference newType) {
    onEntityUpdated(initialEntity.withCommandType(newType));
  }

  _onResponseTypeChanged(d.TypeReference newType) {
    onEntityUpdated(initialEntity.withResponseType(newType));
  }

  _onCodeChanged(String updatedCode) {
    onEntityUpdated(initialEntity.withCode("body", updatedCode));
  }
}
