import 'dart:io';

import 'package:cloudstation_protocols/generated/domain.pb.dart' as d;

class ProjectAssembler {
  final d.Project project;
  final String version;

  ProjectAssembler(this.project, this.version);

  Future<void> initializeCloudStateProject(Directory directory, String suffix) {
    return Process.run(
      "cloudstate",
      [
        "create",
        "--name=${project.projectId}-$suffix",
        "--registry=$dockerRegistry",
        "--profile=dart",
        "--tag=$version",
      ],
      workingDirectory: directory.path,
    );
  }

  Future<void> buildCloudStateProject(Directory directory) {
    return Process.run(
      "cloudstate",
      [
        "build",
        "--path=.",
        "--tag=$version",
        "--push",
      ],
      workingDirectory: directory.path,
    );
  }

  Future<void> deployCloudStateProject(Directory directory) {
    return Process.run(
      "cloudstate",
      [
        "deploy",
        "--namespace=${project.projectId}",
      ],
      workingDirectory: directory.path,
    );
  }

  Future<Directory> createTmpDirectory() {
    return Directory.systemTemp.createTemp();
  }

  Future<void> run() {
    return Stream.fromIterable(project.actions)
        .asyncMap(
          (action) => deployEntity(
              "action-${action.name}",
              (directory) =>
                  ActionExporter(project, version, directory, action)),
        )
        .drain();
  }

  Future<void> deployEntity(
      String name, EntityExporter Function(Directory) exporterBuilder) async {
    final directory = await createTmpDirectory();
    await initializeCloudStateProject(directory, name);
    await exporterBuilder(directory).writeFiles();
    await buildCloudStateProject(directory);
  }
}

String get dockerRegistry => "registry.cloudstation";

abstract class EntityExporter {
  final d.Project project;
  final String version;
  final Directory directory;

  EntityExporter(this.project, this.version, this.directory);

  String get projectNameSuffix;

  String get mainContents;

  String get protoServiceDefinition;

  Future<void> writeFiles() {
    return Stream.fromIterable(writableFiles).asyncMap(writeFile).drain();
  }

  List<WritableFile> get writableFiles => [
        WritableFile("pubspec.yaml", pubspecContents),
        WritableFile("bin/main.dart", mainContents),
        WritableFile("protocols/models.proto", protoContents),
      ];

  String get pubspecContents => [
        "name: ${project.projectId}_${projectNameSuffix}",
        "publish_to: 'none'",
        "version: $version",
        "environment:",
        "  sdk: \">=2.7.0 <3.0.0\"",
        "dependencies:",
        "  cloudstate: ^0.5.0",
        "  async: ^2.2.0",
        "  grpc: ^2.1.3",
        "  protobuf: ^1.0.1",
        "",
      ].join("\n");

  String get protoContents => [
        "syntax = \"proto3\";",
        "package cloudstation.user;",
        for (final model in project.models) model.messageDefinition,
        protoServiceDefinition,
      ].join("\n");

  Future<void> writeFile(WritableFile writableFile) async {
    final file = File(directory.path + "/" + writableFile.path);
    await file.create(recursive: true);
    await file.writeAsString(writableFile.contents);
  }
}

class ActionExporter extends EntityExporter {
  final d.Action action;

  ActionExporter(project, version, directory, this.action)
      : super(project, version, directory);

  @override
  String get projectNameSuffix => action.name;

  String get mainContents => [
        "import 'package:cloudstate/cloudstate.dart';",
        "import './generated/models.pb.dart';",
        "",
        "void main() {",
        "  Cloudstate()",
        "    ..port = 8080",
        "    ..address = 'localhost'",
        "    ..registerStatelessEntity(\"${userServicePath}\", ${entityClassName})",
        "    ..start();",
        ""
      ].join("\n");

  @override
  String get protoServiceDefinition => [
        "service ${project.projectId}Service {",
        "    rpc ${action.name}RPC(${typeReferenceToProtoType(action.commandType)}) returns (${typeReferenceToProtoType(action.responseType)});",
        "}",
        "",
      ].join("\n");
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

class WritableFile {
  final String path;
  final String contents;

  WritableFile(this.path, this.contents);
}
