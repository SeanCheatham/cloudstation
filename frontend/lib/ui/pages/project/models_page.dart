import 'package:cloudstation/logic/project_bloc.dart';
import 'package:cloudstation/models/model.dart';
import 'package:cloudstation/ui/widgets/panel.dart';
import 'package:cloudstation/ui/widgets/scaffolds.dart';
import 'package:cloudstation/ui/widgets/single_value_form.dart';
import 'package:cloudstation/ui/widgets/type_chooser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloudstation/models/projects/project_events.dart' as events;
import 'package:cloudstation/models/projects/project_states.dart' as states;

class ModelsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectBloc, states.ProjectState>(
      builder: (context, state) => ModelsPageImpl(
        state: state as states.LoadedProjectState,
        addEvent: context.watch<ProjectBloc>().add,
      ),
    );
  }
}

class ModelsPageImpl extends StatefulWidget {
  final states.LoadedProjectState state;
  final Function(events.ProjectEvent) addEvent;
  const ModelsPageImpl({Key key, @required this.state, @required this.addEvent})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _ModelsPageImplState();
}

class _ModelsPageImplState extends State<ModelsPageImpl> {
  @override
  Widget build(BuildContext context) {
    return LeftRight(
      leftTitle: "Models",
      onNewItem: () {
        widget.addEvent(events.AddModel());
      },
      itemCount: widget.state.models.length,
      itemBuilder: (context, idx) => Text(widget.state.models[idx].name),
      emptySelection: Center(
        child: const Text("Pick a Model"),
      ),
      itemEditorBuilder: (contetext, idx) => _modelEditor(idx),
      currentIndex: widget.state.selectedModelIndex,
      itemSelected: (idx) => widget.addEvent(events.SelectModel(idx)),
    );
  }

  Widget _modelEditor(int index) {
    return ModelEditor(
      key: UniqueKey(),
      initialModel: widget.state.models[widget.state.selectedModelIndex],
      state: widget.state,
      onModelUpdated: (updatedModel) => _onModelUpdated(
        widget.state.models[widget.state.selectedModelIndex],
        updatedModel,
      ),
    );
  }

  _onModelUpdated(Model originalModel, Model updatedModel) {
    widget.addEvent(events.UpdateModel(originalModel, updatedModel));
  }
}

class ModelEditor extends StatelessWidget {
  final Model initialModel;
  final states.LoadedProjectState state;
  final Function(Model) onModelUpdated;

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
  }

  _onPropertyUpdated(int index, ModelProperty newProperty) {
    onModelUpdated(initialModel..properties[index] = newProperty);
  }

  _onPropertyAdded() {
    onModelUpdated(initialModel
      ..properties.add(ModelProperty(
          "newProperty", StaticTypeReference(StaticType.string))));
  }

  _onPropertyRemoved(int idx) {
    onModelUpdated(initialModel..properties.removeAt(idx));
  }
}

class PropertiesEditor extends StatelessWidget {
  final List<ModelProperty> properties;
  final states.LoadedProjectState state;
  final Function(int, ModelProperty) onPropertyUpdated;
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
        availableTypes: state.availableTypes,
        selectedType: properties[idx].type,
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
