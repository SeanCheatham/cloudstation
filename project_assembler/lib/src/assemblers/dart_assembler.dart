import 'package:async/async.dart' show StreamGroup;

import 'package:cloudstation_protocols/generated/domain.pb.dart' as d;

import 'package:cloudstation_project_assembler/src/project_assembler.dart';

import './entity_assembler.dart';
import '../project_assembler.dart';

class DartAssembler extends EntityAssembler {
  @override
  Future<ExportableEntity> assembleAction(
      d.Project project, d.Action entity, String version) async {
    final pubspecFile = pubspec(project, entity.name, version);
    final protoModels = protos(project);
    final mainContentsFile = mainContents(
        "..registerStatelessEntity(\"${userServicePath}\", ${entityClassName})");
    final serviceProtoFile = actionProtoServiceDefinition(project, entity);
    return ExportableEntity(
      StreamGroup.merge(
        [
          Stream.fromIterable(
            [
              pubspecFile,
              mainContentsFile,
              serviceProtoFile,
              dockerfile(),
            ]..addAll(protoModels),
          ),
        ],
      ),
    );
  }

  @override
  Future<ExportableEntity> assembleEventSourcedEntity(
      d.Project project, d.EventSourcedEntity entity, String version) async {
    return ExportableEntity(StreamGroup.merge([
      Stream.fromIterable([
        pubspec(project, entity.name, version),
      ]..addAll(protos(project))),
    ]));
  }

  @override
  Future<ExportableEntity> assembleReplicatedEntity(
      d.Project project, d.ReplicatedEntity entity, String version) async {
    return ExportableEntity(StreamGroup.merge([
      Stream.fromIterable([
        pubspec(project, entity.name, version),
      ]..addAll(protos(project))),
    ]));
  }
}

WritableFile pubspec(d.Project project, String entityName, String version) =>
    StringWritableFile(
        "./pubpsec.yml",
        [
          "name: ${project.projectId}_${entityName}",
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
        ].join("\n"));

WritableFile mainContents(String entityRegistrationLine) {
  return StringWritableFile(
      "./bin/main.dart",
      [
        "import 'package:cloudstate/cloudstate.dart';",
        "import './generated/models.pb.dart';",
        "",
        "void main() {",
        "  Cloudstate()",
        "    ..port = 8080",
        "    ..address = 'localhost'",
        "    $entityRegistrationLine",
        "    ..start();",
        ""
      ].join("\n"));
}

WritableFile entityCodeContents(d.Project project, d.Action action) {}

WritableFile dockerfile() {
  return StringWritableFile(
      "./Dockerfile",
      [
        "FROM google/dart",
        "RUN apt-get -q update && apt-get install -y protobuf-compiler",
        "RUN pub global activate protoc_plugin",
        "ADD ./protocols /app/protocols",
        "ADD ./pubspec.yaml /app/service/pubspec.yaml",
        "WORKDIR /app/service",
        "RUN pub get",
        "ADD ./service /app/service",
        "RUN pub get --offline",
        "RUN dart --snapshot-kind=kernel --snapshot=bin/main.dart.snapshot bin/main.dart",
        "CMD []",
        "ENTRYPOINT [\"/usr/bin/dart\", \"--enable-asserts\",  \"--enable-vm-service:8181\", \"bin/main.dart.snapshot\"]",
      ].join("\n"));
}
