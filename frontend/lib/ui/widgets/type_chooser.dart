import 'package:cloudstation/models/model.dart';
import 'package:flutter/material.dart';
import 'package:cloudstation/models/projects/project_states.dart' as states;

class TypeChooser extends StatelessWidget {
  final List<TypeReference> availableTypes;
  final TypeReference selectedType;
  final Function(TypeReference) onTypeUpdated;

  TypeChooser(
      {Key key,
      this.availableTypes,
      TypeReference selectedType,
      this.onTypeUpdated})
      : selectedType = (selectedType is ListTypeReference ||
                selectedType is MapTypeReference)
            ? selectedType
            : (availableTypes.contains(selectedType) ? selectedType : null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (selectedType is ListTypeReference) {
      return buildListChooser(context, selectedType);
    } else if (selectedType is MapTypeReference) {
      return buildMapChooser(context, selectedType);
    } else {
      return buildDropdown(context);
    }
  }

  List<TypeReference> get _presentableTypeReferences => List.of(availableTypes)
    ..add(ListTypeReference(null))
    ..add(MapTypeReference(null, null));

  Widget buildDropdown(BuildContext context) {
    return DropdownButton<TypeReference>(
      value: selectedType,
      items: [
        for (final t in _presentableTypeReferences)
          DropdownMenuItem(
            value: t,
            child: Text(t.name),
          )
      ],
      onChanged: onTypeUpdated,
    );
  }

  Widget buildListChooser(
      BuildContext context, ListTypeReference listTypeReference) {
    return Row(
      children: [
        buildDropdown(context),
        inlineCode("[value="),
        TypeChooser(
          availableTypes: availableTypes,
          selectedType: listTypeReference.valueType,
          onTypeUpdated: (newValueType) =>
              onTypeUpdated(ListTypeReference(newValueType)),
        ),
        inlineCode("]"),
      ],
    );
  }

  Widget buildMapChooser(
      BuildContext context, MapTypeReference mapTypeReference) {
    return Row(
      children: [
        buildDropdown(context),
        inlineCode("[key="),
        TypeChooser(
          availableTypes: availableTypes,
          selectedType: mapTypeReference.keyType,
          onTypeUpdated: (newValueType) => onTypeUpdated(
              MapTypeReference(newValueType, mapTypeReference.valueType)),
        ),
        inlineCode(", value="),
        TypeChooser(
          availableTypes: availableTypes,
          selectedType: mapTypeReference.valueType,
          onTypeUpdated: (newValueType) => onTypeUpdated(
              MapTypeReference(mapTypeReference.keyType, newValueType)),
        ),
        inlineCode("]"),
      ],
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
