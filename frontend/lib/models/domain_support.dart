import 'package:cloudstation_protocols/generated/domain.pb.dart' as d;
import 'package:protobuf/protobuf.dart';

extension ProjectHelp on d.Project {
  List<d.TypeReference> get availableTypes => [
        for (final model in models)
          d.TypeReference()
            ..model = (d.TypeReference_Model()..name = model.name),
        for (final staticType in d.StaticType.values)
          d.TypeReference()
            ..static = (d.TypeReference_Static()..staticType = staticType),
      ];
}

extension ModelHelp on d.Model {
  d.Model withName(String newName) => this.deepCopy()..name = newName;

  d.Model withNewProperty() => this.deepCopy()
    ..properties.add(
      d.Model_Property()
        ..name = "NewProperty"
        ..typeReference = (d.TypeReference()
          ..static =
              (d.TypeReference_Static()..staticType = d.StaticType.INT32)),
    );
}

extension ModelPropertyHelp on d.Model_Property {
  d.Model_Property withName(String newName) => this.deepCopy()..name = newName;
  d.Model_Property withType(d.TypeReference newType) =>
      this.deepCopy()..typeReference = newType;
}

class TypeReferenceWrapper {
  final d.TypeReference typeReference;

  TypeReferenceWrapper(this.typeReference);

  bool operator ==(o) {
    if (o is TypeReferenceWrapper) {
      if (typeReference.hasStatic())
        return o.typeReference.hasStatic() &&
            o.typeReference.static.staticType ==
                typeReference.static.staticType;
      if (typeReference.hasModel())
        return o.typeReference.hasModel() &&
            o.typeReference.model.name == typeReference.model.name;
      if (typeReference.hasList())
        return o.typeReference.hasList() &&
            (TypeReferenceWrapper(o.typeReference.list.valueType) ==
                    TypeReferenceWrapper(typeReference.list.valueType) ||
                !o.typeReference.list.hasValueType() ||
                !typeReference.list.hasValueType());
      if (typeReference.hasMap())
        return o.typeReference.hasMap() &&
            (!typeReference.map.hasKeyType() ||
                !o.typeReference.map.hasKeyType() ||
                TypeReferenceWrapper(o.typeReference.map.keyType) ==
                    TypeReferenceWrapper(typeReference.map.keyType)) &&
            (!typeReference.map.hasValueType() ||
                !o.typeReference.map.hasValueType() ||
                TypeReferenceWrapper(o.typeReference.map.valueType) ==
                    TypeReferenceWrapper(typeReference.map.valueType));
    }

    return false;
  }
}

extension TypeReferenceHelp on d.TypeReference {
  TypeReferenceWrapper get wrap => TypeReferenceWrapper(this);

  bool isType(o) {
    if (o is TypeReferenceWrapper)
      return wrap == o;
    else if (o is d.TypeReference) {
      return wrap == o.wrap;
    }
    return false;
  }

  String get name {
    if (hasStatic()) {
      switch (static.staticType) {
        case d.StaticType.BOOL:
          return "Bool";
        case d.StaticType.INT32:
          return "Int";
        case d.StaticType.INT64:
          return "Long";
        case d.StaticType.FLOAT:
          return "Float";
        case d.StaticType.DOUBLE:
          return "Double";
        case d.StaticType.STRING:
          return "String";
      }
    } else if (hasModel()) {
      return model.name;
    } else if (hasList()) {
      final suffix =
          (list.valueType?.name != null ? "[${list.valueType.name}]" : "");
      return "List$suffix";
    } else if (hasMap()) {
      String suffix;
      if (map.keyType?.name == null && map.valueType?.name == null)
        suffix = "";
      else if (map.keyType?.name == null)
        suffix = "[_, ${map.valueType.name}]";
      else if (map.valueType?.name == null)
        suffix = "[${map.keyType.name}, _]";
      else
        suffix = "[${map.keyType.name}, ${map.valueType.name}]";
      return "Map$suffix";
    }
  }
}

final listTypeReferenceRegex = RegExp(r"List\[(.+)\]");
final mapTypeReferenceRegex = RegExp(r"Map\[(.+), (.+)\]");

d.TypeReference deserializeTypeReference(String serialized) {
  if (serialized.startsWith("List")) {
    if (serialized == "List")
      return d.TypeReference()..list = d.TypeReference_List();
    else {
      final match = listTypeReferenceRegex.firstMatch(serialized);
      final serializedValueType = match.group(0);
      final valueType =
          serializedValueType != "null" && serializedValueType != "_"
              ? deserializeTypeReference(serializedValueType)
              : null;
      return d.TypeReference()
        ..list = (d.TypeReference_List()..valueType = valueType);
    }
  } else if (serialized.startsWith("Map")) {
    if (serialized == "Map")
      return d.TypeReference()..map = d.TypeReference_Map();
    else {
      final match = mapTypeReferenceRegex.firstMatch(serialized);
      final serializedKeyType = match.group(1);
      final keyType = serializedKeyType != "null" && serializedKeyType != "_"
          ? deserializeTypeReference(serializedKeyType)
          : null;
      final serializedValueType = match.group(1);
      final valueType =
          serializedValueType != "null" && serializedValueType != "_"
              ? deserializeTypeReference(serializedValueType)
              : null;
      return d.TypeReference()
        ..map = (d.TypeReference_Map()
          ..keyType = keyType
          ..valueType = valueType);
    }
  } else {
    switch (serialized) {
      case "Int":
        return d.TypeReference()
          ..static =
              (d.TypeReference_Static()..staticType = d.StaticType.INT32);
      case "Long":
        return d.TypeReference()
          ..static =
              (d.TypeReference_Static()..staticType = d.StaticType.INT64);
      case "Float":
        return d.TypeReference()
          ..static =
              (d.TypeReference_Static()..staticType = d.StaticType.FLOAT);
      case "Double":
        return d.TypeReference()
          ..static =
              (d.TypeReference_Static()..staticType = d.StaticType.DOUBLE);
      case "Bool":
        return d.TypeReference()
          ..static = (d.TypeReference_Static()..staticType = d.StaticType.BOOL);
      case "String":
        return d.TypeReference()
          ..static =
              (d.TypeReference_Static()..staticType = d.StaticType.STRING);
    }
  }

  return d.TypeReference()
    ..model = (d.TypeReference_Model()..name = serialized);
}

extension EventSourcedEntityHelp on d.EventSourcedEntity {
  d.EventSourcedEntity withName(String newName) =>
      this.deepCopy()..name = newName;

  d.EventSourcedEntity withStateType(d.TypeReference newType) =>
      this.deepCopy()..stateType = newType;
}

extension CommandHandlerHelp on d.EventSourcedEntity_CommandHandler {
  d.EventSourcedEntity_CommandHandler withCommandType(
          d.TypeReference updatedValue) =>
      this.deepCopy()..commandType = updatedValue;

  d.EventSourcedEntity_CommandHandler withResponseType(
          d.TypeReference updatedValue) =>
      this.deepCopy()..responseType = updatedValue;

  d.EventSourcedEntity_CommandHandler withCode(
          String name, String updatedValue) =>
      this.deepCopy()..codeBlocks[name] = updatedValue;
}

extension EventHandlerHelp on d.EventSourcedEntity_EventHandler {
  d.EventSourcedEntity_EventHandler withEventType(
          d.TypeReference updatedValue) =>
      this.deepCopy()..eventType = updatedValue;

  d.EventSourcedEntity_EventHandler withCode(
          String name, String updatedValue) =>
      this.deepCopy()..codeBlocks[name] = updatedValue;
}

extension ReplicatedEntityHelp on d.ReplicatedEntity {
  d.ReplicatedEntity withName(String newName) =>
      this.deepCopy()..name = newName;

  d.ReplicatedEntity withReplicatedData(d.ReplicatedData d) =>
      this.deepCopy()..replicatedData = d;
}

extension ReplicatedEntityCommandHelp on d.ReplicatedEntity_CommandHandler {
  d.ReplicatedEntity_CommandHandler withCommandType(
          d.TypeReference updatedValue) =>
      this.deepCopy()..commandType = updatedValue;

  d.ReplicatedEntity_CommandHandler withCode(
          String blockName, String updatedValue) =>
      this.deepCopy()..codeBlocks[blockName] = updatedValue;
}

extension ReplicatedDataHelp on d.ReplicatedData {
  String get name {
    if (hasGCounter())
      return "GCounter";
    else if (hasPnCounter())
      return "PNCounter";
    else if (hasGSet())
      return "GSet" +
          ((gSet.valueType?.name != null) ? "[${gSet.valueType.name}]" : "");
    else if (hasOrSet())
      return "ORSet" +
          ((orSet.valueType?.name != null) ? "[${orSet.valueType.name}]" : "");
    else if (hasFlag())
      return "Flag";
    else if (hasLwwRegister())
      return "LWWRegister" +
          ((lwwRegister.valueType?.name != null)
              ? "[${lwwRegister.valueType.name}]"
              : "");
    else if (hasOrMap()) {
      String suffix;
      if (orMap.keyType?.name == null && orMap.valueType?.name == null)
        suffix = "";
      else if (orMap.keyType?.name == null)
        suffix = "[_, ${orMap.valueType.name}]";
      else if (orMap.valueType?.name == null)
        suffix = "[${orMap.keyType.name}, _]";
      else
        suffix = "[${orMap.keyType.name}, ${orMap.valueType.name}]";
      return "ORMap$suffix";
    } else if (hasVote()) return "Vote";
  }
}

extension ActionHelp on d.Action {
  d.Action withName(String newName) =>
      this.deepCopy()..name = newName;
      
    d.Action withCommandType(
          d.TypeReference updatedValue) =>
      this.deepCopy()..commandType = updatedValue;

  d.Action withResponseType(
          d.TypeReference updatedValue) =>
      this.deepCopy()..responseType = updatedValue;

  d.Action withCode(
          String name, String updatedValue) =>
      this.deepCopy()..codeBlocks[name] = updatedValue;
}