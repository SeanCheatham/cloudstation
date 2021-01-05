import 'package:cloudstation/models/domain_support.dart';
import 'package:flutter/material.dart';
import 'package:cloudstation_protocols/generated/domain.pb.dart' as d;
import 'package:protobuf/protobuf.dart';

class TypeChooser extends StatelessWidget {
  final List<d.TypeReference> availableTypes;
  final d.TypeReference selectedType;
  final Function(d.TypeReference) onTypeUpdated;

  TypeChooser(
      {Key key, this.availableTypes, this.selectedType, this.onTypeUpdated})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (selectedType.hasList()) {
      return buildListChooser(context, selectedType.list);
    } else if (selectedType.hasMap()) {
      return buildMapChooser(context, selectedType.map);
    } else {
      return buildDropdown(context);
    }
  }

  List<d.TypeReference> get _presentableTypeReferences =>
      List.of(availableTypes)
        ..add(d.TypeReference()..list = d.TypeReference_List())
        ..add(d.TypeReference()..map = d.TypeReference_Map());

  Widget buildDropdown(BuildContext context) {
    return DropdownButton<TypeReferenceWrapper>(
      value: selectedType.wrap,
      items: [
        for (final t in _presentableTypeReferences)
          DropdownMenuItem(
            value: t.wrap,
            child: Text(t.name),
          )
      ],
      onChanged: (w) => onTypeUpdated(w.typeReference),
    );
  }

  Widget buildListChooser(
      BuildContext context, d.TypeReference_List listTypeReference) {
    return Row(
      children: [
        buildDropdown(context),
        inlineCode("[value="),
        TypeChooser(
          availableTypes: availableTypes,
          selectedType: listTypeReference.valueType,
          onTypeUpdated: (newValueType) => onTypeUpdated(d.TypeReference()
            ..list = (d.TypeReference_List()..valueType = newValueType)),
        ),
        inlineCode("]"),
      ],
    );
  }

  Widget buildMapChooser(
      BuildContext context, d.TypeReference_Map mapTypeReference) {
    return Row(
      children: [
        buildDropdown(context),
        inlineCode("[key="),
        TypeChooser(
          availableTypes: availableTypes,
          selectedType: mapTypeReference.keyType,
          onTypeUpdated: (newValueType) => onTypeUpdated(d.TypeReference()
            ..map = mapTypeReference.rebuild((m) => m..keyType = newValueType)),
        ),
        inlineCode(", value="),
        TypeChooser(
          availableTypes: availableTypes,
          selectedType: mapTypeReference.valueType,
          onTypeUpdated: (newValueType) => onTypeUpdated(d.TypeReference()
            ..map =
                mapTypeReference.rebuild((m) => m..valueType = newValueType)),
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
