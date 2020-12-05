import 'package:cloudstation/models/model.dart';

class CRDTEntity {
  final String name;
  final CRDT crdt;
  final List<CRDTCommandHandler> commandHandlers;
  final int selectedCommandHandlerIndex;

  CRDTEntity(
    this.name,
    this.crdt,
    this.commandHandlers,
    this.selectedCommandHandlerIndex,
  );

  CRDTEntity withName(String newName) =>
      CRDTEntity(newName, crdt, commandHandlers, selectedCommandHandlerIndex);

  CRDTEntity withCRDT(CRDT crdt) => CRDTEntity(
        name,
        crdt,
        commandHandlers,
        selectedCommandHandlerIndex,
      );

  CRDTEntity withSelectedCommandHandlerIndex(int idx) => CRDTEntity(
        name,
        crdt,
        commandHandlers,
        idx,
      );
}

class CRDTCommandHandler {
  final TypeReference commandType;
  final String code;

  CRDTCommandHandler(this.commandType, this.code);

  CRDTCommandHandler withCommandType(TypeReference updatedValue) =>
      CRDTCommandHandler(updatedValue, code);
  CRDTCommandHandler withCode(String updatedValue) =>
      CRDTCommandHandler(commandType, updatedValue);
}

abstract class CRDT {
  String get name;
}

class GCounter extends CRDT {
  final String name = "GCounter";
  bool operator ==(o) => o is GCounter;
}

class PNCounter extends CRDT {
  final String name = "PNCounter";
  bool operator ==(o) => o is PNCounter;
}

class GSet extends CRDT {
  final TypeReference valueType;

  GSet(this.valueType);

  String get name =>
      "GSet" + ((valueType != null) ? "[${valueType.name}]" : "");

  bool operator ==(o) =>
      o is GSet &&
      (o.valueType == this.valueType ||
          o.valueType == null ||
          this.valueType == null);
}

class ORSet extends CRDT {
  final TypeReference valueType;

  ORSet(this.valueType);
  String get name =>
      "ORSet" + ((valueType != null) ? "[${valueType.name}]" : "");

  bool operator ==(o) =>
      o is ORSet &&
      (o.valueType == this.valueType ||
          o.valueType == null ||
          this.valueType == null);
}

class Flag extends CRDT {
  final String name = "Flag";

  bool operator ==(o) => o is Flag;
}

class LWWRegister extends CRDT {
  final TypeReference valueType;
  LWWRegister(this.valueType);
  String get name =>
      "LWWRegister" + ((valueType != null) ? "[${valueType.name}]" : "");

  bool operator ==(o) =>
      o is LWWRegister &&
      (o.valueType == this.valueType ||
          o.valueType == null ||
          this.valueType == null);
}

class ORMap extends CRDT {
  final TypeReference keyType;
  final TypeReference valueType;

  ORMap(this.keyType, this.valueType);

  String get name {
    final suffix = (keyType != null && valueType != null)
        ? "[${keyType.name}, ${valueType.name}]"
        : ((keyType != null)
            ? "[${keyType.name}, _]"
            : ((valueType != null) ? "[_, ${valueType.name}]" : ""));
    return "LWWRegister" + suffix;
  }

  bool operator ==(o) =>
      o is ORMap &&
      (o.keyType == this.keyType ||
          o.keyType == null ||
          this.keyType == null) &&
      (o.valueType == this.valueType ||
          o.valueType == null ||
          this.valueType == null);
}

class Vote extends CRDT {
  final String name = "Vote";

  bool operator ==(o) => o is Vote;
}
