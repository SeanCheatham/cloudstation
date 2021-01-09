import 'package:cloudstation_protocols/generated/domain.pb.dart' as d;
import '../project_assembler.dart';

abstract class EntityAssembler {
  Future<ExportableEntity> assembleEventSourcedEntity(
      d.Project project, d.EventSourcedEntity entity, String version);
  Future<ExportableEntity> assembleReplicatedEntity(
      d.Project project, d.ReplicatedEntity entity, String version);
  Future<ExportableEntity> assembleAction(
      d.Project project, d.Action entity, String version);

  List<WritableFile> protos(d.Project project) => [
        StringWritableFile(
            "./protocols/models.proto",
            [
              "syntax = \"proto3\";",
              "package cloudstation.user;",
              for (final model in project.models) model.messageDefinition,
              "",
            ].join("\n"))
      ];
}

const String userServicePath = "cloudstation.user.Service";
const String entityClassName = "UserEntity";

extension ModelProtoExt on d.Model {
  String get messageDefinition => [
        "message ${name} {",
        for (final line in propertyLines) line,
        "}",
        "",
      ].join("\n");

  List<String> get propertyLines => [
        for (int i = 0; i < properties.length; i++)
          "        ${typeReferenceToProtoType(properties[i].typeReference)} ${properties[i].name} = ${i + 1}"
      ];
}

String typeReferenceToProtoType(d.TypeReference typeReference) {
  if (typeReference.hasStatic()) {
    switch (typeReference.static.staticType) {
      case d.StaticType.INT32:
        return "int32";
      case d.StaticType.INT64:
        return "int64";
      case d.StaticType.FLOAT:
        return "float";
      case d.StaticType.DOUBLE:
        return "double";
      case d.StaticType.STRING:
        return "string";
      case d.StaticType.BOOL:
        return "bool";
    }
  } else if (typeReference.hasModel()) {
    return typeReference.model.name;
  } else if (typeReference.hasList()) {
    return "repeated " + typeReferenceToProtoType(typeReference.list.valueType);
  } else if (typeReference.hasMap()) {
    return "map<${typeReferenceToProtoType(typeReference.map.keyType)}, ${typeReferenceToProtoType(typeReference.map.valueType)}>";
  }

  throw new UnsupportedError(typeReference.toDebugString());
}

StringWritableFile actionProtoServiceDefinition(
    d.Project project, d.Action action) {
  return StringWritableFile(
      "./protocols/service.proto",
      [
        "syntax = \"proto3\";",
        "package cloudstation.user;",
        "service ${project.projectId}Service {",
        "    rpc ${action.name}RPC(${typeReferenceToProtoType(action.commandType)}) returns (${typeReferenceToProtoType(action.responseType)});",
        "}",
        "",
      ].join("\n"));
}
