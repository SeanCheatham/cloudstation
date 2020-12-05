class Model {
  final String name;
  final List<ModelProperty> properties;

  Model(this.name, this.properties);

  Model withName(String newName) => Model(newName, properties);
}

class ModelProperty {
  final String name;
  final TypeReference type;

  ModelProperty(this.name, this.type);

  ModelProperty withName(String newName) => ModelProperty(newName, this.type);
  ModelProperty withType(TypeReference newType) =>
      ModelProperty(this.name, newType);
}

abstract class TypeReference {
  String get name;
}

class ModelTypeReference extends TypeReference {
  final String name;

  ModelTypeReference(this.name);
  bool operator ==(o) => o is ModelTypeReference && o.name == this.name;
}

class StaticTypeReference extends TypeReference {
  final StaticType staticType;

  StaticTypeReference(this.staticType);

  String get name {
    switch (staticType) {
      case StaticType.bool:
        return "Boolean";
        break;
      case StaticType.string:
        return "String";
        break;
      case StaticType.int32:
        return "Int";
        break;
      case StaticType.int64:
        return "Long";
        break;
      case StaticType.float:
        return "Float";
        break;
      case StaticType.double:
        return "Double";
        break;
    }
  }

  bool operator ==(o) =>
      o is StaticTypeReference && o.staticType == this.staticType;
}

enum StaticType { string, int32, int64, float, double, bool }

class MapTypeReference extends TypeReference {
  final TypeReference keyType;
  final TypeReference valueType;

  MapTypeReference(this.keyType, this.valueType);

  String get name {
    if (keyType == null && valueType == null)
      return "Map";
    else if (keyType == null)
      return "Map[_, ${valueType.name}]";
    else if (valueType == null)
      return "Map[${keyType.name}, _]";
    else
      return "Map[${keyType.name}, ${valueType.name}]";
  }

  bool operator ==(o) =>
      o is MapTypeReference &&
      (o.keyType == this.keyType ||
          o.keyType == null ||
          this.keyType == null) &&
      (o.valueType == this.valueType ||
          o.valueType == null ||
          this.valueType == null);
}

class ListTypeReference extends TypeReference {
  final TypeReference valueType;

  ListTypeReference(this.valueType);

  String get name => "List" + (valueType != null ? "[${valueType.name}]" : "");
  bool operator ==(o) =>
      o is ListTypeReference &&
      (o.valueType == this.valueType ||
          o.valueType == null ||
          this.valueType == null);
}
