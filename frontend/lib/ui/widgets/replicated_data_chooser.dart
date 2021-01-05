import 'package:cloudstation/models/project_state.dart';
import 'package:cloudstation/ui/widgets/type_chooser.dart';
import 'package:flutter/material.dart';
import 'package:intersperse/intersperse.dart';
import 'package:cloudstation_protocols/generated/domain.pb.dart' as d;
import 'package:protobuf/protobuf.dart';
import 'package:cloudstation/models/domain_support.dart';

class ReplicatedDataChooser extends StatelessWidget {
  final List<d.TypeReference> availableTypes;
  final d.ReplicatedData selectedCRDT;
  final Function(d.ReplicatedData) onCRDTUpdated;

  const ReplicatedDataChooser({
    Key key,
    @required this.availableTypes,
    @required this.selectedCRDT,
    @required this.onCRDTUpdated,
  }) : super(key: key);

  factory ReplicatedDataChooser.fromProjectState({
    Key key,
    @required ProjectState state,
    @required d.ReplicatedData selectedReplicatedData,
    @required Function(d.ReplicatedData) onReplicatedDataUpdated,
  }) {
    final List<d.TypeReference> availableTypes = [
      d.TypeReference()
        ..static = (d.TypeReference_Static()..staticType = d.StaticType.BOOL),
      d.TypeReference()
        ..static = (d.TypeReference_Static()..staticType = d.StaticType.INT32),
      d.TypeReference()
        ..static = (d.TypeReference_Static()..staticType = d.StaticType.INT64),
      d.TypeReference()
        ..static = (d.TypeReference_Static()..staticType = d.StaticType.FLOAT),
      d.TypeReference()
        ..static = (d.TypeReference_Static()..staticType = d.StaticType.DOUBLE),
      d.TypeReference()
        ..static = (d.TypeReference_Static()..staticType = d.StaticType.STRING),
    ]..addAll([
        for (final m in state.project.models)
          (d.TypeReference()..model = (d.TypeReference_Model()..name = m.name))
      ]);

    return ReplicatedDataChooser(
        key: key,
        availableTypes: availableTypes,
        selectedCRDT: selectedReplicatedData,
        onCRDTUpdated: onReplicatedDataUpdated);
  }

  @override
  Widget build(BuildContext context) {
    final c = selectedCRDT;
    if (c is d.ReplicatedData_GSet) {
      return buildGenericChooser(
        context,
        {"value": c.gSet.valueType},
        {
          "value": (updatedType) => onCRDTUpdated(d.ReplicatedData()
            ..gSet = (d.ReplicatedData_GSet()..valueType = updatedType))
        },
      );
    } else if (c is d.ReplicatedData_ORSet) {
      return buildGenericChooser(
        context,
        {"value": c.orSet.valueType},
        {
          "value": (updatedType) => onCRDTUpdated(d.ReplicatedData()
            ..orSet = (d.ReplicatedData_ORSet()..valueType = updatedType))
        },
      );
    } else if (c is d.ReplicatedData_LWWRegister) {
      return buildGenericChooser(
        context,
        {"value": c.lwwRegister.valueType},
        {
          "value": (updatedType) => onCRDTUpdated(d.ReplicatedData()
            ..lwwRegister =
                (d.ReplicatedData_LWWRegister()..valueType = updatedType))
        },
      );
    } else if (c is d.ReplicatedData_ORMap) {
      return buildGenericChooser(
        context,
        {"key": c.orMap.keyType, "value": c.orMap.valueType},
        {
          "key": (updatedType) => onCRDTUpdated(d.ReplicatedData()
            ..orMap = c.orMap.rebuild((o) => o..keyType = updatedType)),
          "value": (updatedType) => onCRDTUpdated(d.ReplicatedData()
            ..orMap = c.orMap.rebuild((o) => o..valueType = updatedType)),
        },
      );
    } else {
      return buildDropdown(context);
    }
  }

  List<d.ReplicatedData> get _presentableCRDTs => [
        d.ReplicatedData()..gCounter = d.ReplicatedData_GCounter(),
        d.ReplicatedData()..pnCounter = d.ReplicatedData_PNCounter(),
        d.ReplicatedData()..gSet = d.ReplicatedData_GSet(),
        d.ReplicatedData()..orSet = d.ReplicatedData_ORSet(),
        d.ReplicatedData()..flag = d.ReplicatedData_Flag(),
        d.ReplicatedData()..lwwRegister = d.ReplicatedData_LWWRegister(),
        d.ReplicatedData()..orMap = d.ReplicatedData_ORMap(),
        d.ReplicatedData()..vote = d.ReplicatedData_Vote(),
      ];

  Widget buildDropdown(BuildContext context) {
    return DropdownButton<d.ReplicatedData>(
      value: selectedCRDT,
      items: [
        for (final t in _presentableCRDTs)
          DropdownMenuItem(
            value: t,
            child: Text(t.name),
          )
      ],
      onChanged: onCRDTUpdated,
    );
  }

  Widget buildGenericChooser(
      BuildContext context,
      Map<String, d.TypeReference> selectedTypes,
      Map<String, Function(d.TypeReference)> genericTypeUpdatedHandlers) {
    final genericWidgets = intersperse(
      Text(", "),
      genericTypeUpdatedHandlers.entries.expand((entry) => [
            Text(entry.key + "="),
            TypeChooser(
              availableTypes: availableTypes,
              selectedType: selectedTypes[entry.key],
              onTypeUpdated: entry.value,
            )
          ]),
    );
    return Row(
      children: [
        buildDropdown(context),
        inlineCode("["),
      ]
        ..addAll(genericWidgets)
        ..addAll([
          inlineCode("]"),
        ]),
    );
  }

  Widget inlineCode(String text) {
    return Text(text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ));
  }
}
