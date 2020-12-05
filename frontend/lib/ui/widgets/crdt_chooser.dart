import 'package:cloudstation/models/crdt_entity.dart';
import 'package:cloudstation/models/model.dart';
import 'package:cloudstation/ui/widgets/type_chooser.dart';
import 'package:flutter/material.dart';
import 'package:cloudstation/models/projects/project_states.dart' as states;
import 'package:intersperse/intersperse.dart';

class CRDTChooser extends StatelessWidget {
  final List<TypeReference> availableTypes;
  final CRDT selectedCRDT;
  final Function(CRDT) onCRDTUpdated;

  const CRDTChooser({
    Key key,
    @required this.availableTypes,
    @required this.selectedCRDT,
    @required this.onCRDTUpdated,
  }) : super(key: key);

  factory CRDTChooser.fromProjectState({
    Key key,
    @required states.LoadedProjectState state,
    @required CRDT selectedCRDT,
    @required Function(CRDT) onCRDTUpdated,
  }) {
    final List<TypeReference> availableTypes = [
      StaticTypeReference(StaticType.string),
      StaticTypeReference(StaticType.int32),
      StaticTypeReference(StaticType.int64),
      StaticTypeReference(StaticType.float),
      StaticTypeReference(StaticType.double),
      StaticTypeReference(StaticType.bool),
    ]..addAll([for (final m in state.models) ModelTypeReference(m.name)]);

    return CRDTChooser(
        key: key,
        availableTypes: availableTypes,
        selectedCRDT: selectedCRDT,
        onCRDTUpdated: onCRDTUpdated);
  }

  @override
  Widget build(BuildContext context) {
    final c = selectedCRDT;
    if (c is GSet) {
      return buildGenericChooser(
        context,
        {"value": c.valueType},
        {"value": (updatedType) => onCRDTUpdated(GSet(updatedType))},
      );
    } else if (c is ORSet) {
      return buildGenericChooser(
        context,
        {"value": c.valueType},
        {"value": (updatedType) => onCRDTUpdated(ORSet(updatedType))},
      );
    } else if (c is LWWRegister) {
      return buildGenericChooser(
        context,
        {"value": c.valueType},
        {"value": (updatedType) => onCRDTUpdated(LWWRegister(updatedType))},
      );
    } else if (c is ORMap) {
      return buildGenericChooser(
        context,
        {"key": c.keyType, "value": c.valueType},
        {
          "key": (updatedType) =>
              onCRDTUpdated(ORMap(updatedType, c.valueType)),
          "value": (updatedType) =>
              onCRDTUpdated(ORMap(c.keyType, updatedType)),
        },
      );
    } else {
      return buildDropdown(context);
    }
  }

  List<CRDT> get _presentableCRDTs => [
        GCounter(),
        PNCounter(),
        GSet(null),
        ORSet(null),
        Flag(),
        LWWRegister(null),
        ORMap(null, null),
        Vote(),
      ];

  Widget buildDropdown(BuildContext context) {
    return DropdownButton<CRDT>(
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
      Map<String, TypeReference> selectedTypes,
      Map<String, Function(TypeReference)> genericTypeUpdatedHandlers) {
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
