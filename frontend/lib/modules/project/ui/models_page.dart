import 'package:cloudstation/models/domain_support.dart';
import 'package:cloudstation_protocols/generated/domain.pb.dart' as d;
import 'package:cloudstation_protocols/generated/project.pb.dart' as p;
import 'package:cloudstation/models/project_state.dart';
import 'package:cloudstation/ui/widgets/panel.dart';
import 'package:cloudstation/ui/widgets/scaffolds.dart';
import 'package:cloudstation/ui/widgets/single_value_form.dart';
import 'package:cloudstation/ui/widgets/type_chooser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ModelsPage extends StatefulWidget {
  final ProjectState state;
  final Function(dynamic) addEvent;
  final String selectedModelName;
  const ModelsPage(
      {Key key,
      @required this.state,
      @required this.addEvent,
      @required this.selectedModelName})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _ModelsPageState();

  d.Model get selectedModel => state.project.models
      .firstWhere((m) => m.name == selectedModelName, orElse: () => null);

  int get selectedModelIndex {
    final idx =
        state.project.models.indexWhere((m) => m.name == selectedModelName);
    if (idx >= 0) return idx;
    return null;
  }
}

class _ModelsPageState extends State<ModelsPage> {
  @override
  Widget build(BuildContext context) {
    return LeftRight(
      leftTitle: "Models",
      onNewItem: () {
        widget.addEvent(p.AddModelCommand());
      },
      itemCount: widget.state.project.models.length,
      itemBuilder: (context, idx) =>
          Text(widget.state.project.models[idx].name),
      emptySelection: Center(
        child: const Text("Pick a Model"),
      ),
      itemEditorBuilder: (contetext, idx) => _modelEditor(idx),
      currentIndex: widget.selectedModelIndex,
      itemSelected: _selectModel,
    );
  }

  void _selectModel(int idx) {
    final String name = widget.state.project.models[idx].name;
    Modular.link.pushNamed("/${widget.state.project.projectId}/models/$name");
  }

  Widget _modelEditor(int index) {
    return ModelEditor(
      key: UniqueKey(),
      initialModel: widget.state.project.models[index],
      state: widget.state,
      onModelUpdated: _onModelUpdated,
    );
  }

  _onModelUpdated(d.Model updatedModel) {
    widget.addEvent(p.UpdateModelCommand()
      ..originalName = widget.selectedModelName
      ..updatedModel = updatedModel);
  }
}

class ModelEditor extends StatelessWidget {
  final d.Model initialModel;
  final ProjectState state;
  final Function(d.Model) onModelUpdated;

  const ModelEditor(
      {Key key, this.initialModel, this.state, this.onModelUpdated})
      : super(key: key);

  Widget build(BuildContext context) {
    return Column(
      children: [
        modelNameContainer(),
        propertiesContainer(),
      ],
    );
  }

  Panel propertiesContainer() {
    return Panel(
      title: "Properties",
      hint: Text(initialModel.properties.map((p) => p.name).join(", ")),
      child: PropertiesEditor(
        properties: initialModel.properties,
        state: state,
        onPropertyUpdated: _onPropertyUpdated,
        onPropertyAdded: _onPropertyAdded,
        onPropertyRemoved: _onPropertyRemoved,
      ),
    );
  }

  Panel modelNameContainer() {
    return Panel(
      title: "Model Name",
      hint: Text(initialModel.name),
      child: SingleValueForm(
        onValueSaved: _onModelRenamed,
        initialValue: initialModel.name,
      ),
    );
  }

  _onModelRenamed(String newName) {
    onModelUpdated(initialModel.withName(newName));
    Modular.link.pushNamed("/${state.project.projectId}/models/$newName");
  }

  _onPropertyUpdated(int index, d.Model_Property newProperty) {
    onModelUpdated(initialModel..properties[index] = newProperty);
  }

  _onPropertyAdded() {
    onModelUpdated(initialModel.withNewProperty());
  }

  _onPropertyRemoved(int idx) {
    onModelUpdated(initialModel..properties.removeAt(idx));
  }
}

class PropertiesEditor extends StatelessWidget {
  final List<d.Model_Property> properties;
  final ProjectState state;
  final Function(int, d.Model_Property) onPropertyUpdated;
  final Function() onPropertyAdded;
  final Function(int) onPropertyRemoved;

  const PropertiesEditor(
      {Key key,
      @required this.properties,
      @required this.state,
      @required this.onPropertyUpdated,
      @required this.onPropertyAdded,
      @required this.onPropertyRemoved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTable(context),
        _newPropertyTile,
      ],
    );
  }

  Widget buildTable(BuildContext context) {
    return Table(
      children: [
        for (int idx = 0; idx < properties.length; idx++)
          TableRow(children: [
            _propertyNameEditor(idx),
            _propertyTypeEditor(idx),
            _propertyDeleteButton(idx),
          ])
      ],
      columnWidths: {1: IntrinsicColumnWidth(), 2: IntrinsicColumnWidth()},
    );
  }

  Widget _propertyNameEditor(int idx) => SingleValueForm(
        onValueSaved: (newPropertyName) {
          onPropertyUpdated(idx, properties[idx].withName(newPropertyName));
        },
        initialValue: properties[idx].name,
      );

  Widget _propertyTypeEditor(int idx) => TypeChooser(
        availableTypes: state.project.availableTypes,
        selectedType: properties[idx].typeReference,
        onTypeUpdated: (updatedType) =>
            onPropertyUpdated(idx, properties[idx].withType(updatedType)),
      );

  Widget _propertyDeleteButton(int idx) => IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          onPropertyRemoved(idx);
        },
      );

  Widget get _newPropertyTile {
    return IconButton(
      icon: Icon(Icons.add),
      onPressed: onPropertyAdded,
    );
  }
}
