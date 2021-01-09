import 'package:test/test.dart';

import 'package:cloudstation_project_assembler/src/assemblers/dart_assembler.dart';
import 'package:cloudstation_protocols/generated/domain.pb.dart' as d;
import 'dart:convert';

void main() {
  final assembler = DartAssembler();
  test('Dart Action Assembler', () async {
    final project = d.Project()
      ..models.addAll([
        d.Model()..name = "Foo",
        d.Model()..name = "Bar",
      ])
      ..actions.addAll([
        d.Action()
          ..name = "FooBarAction"
          ..commandType = (d.TypeReference()
            ..model = (d.TypeReference_Model()..name = "Foo"))
          ..responseType = (d.TypeReference()
            ..model = (d.TypeReference_Model()..name = "Bar"))
          ..codeBlocks["body"] = "return Bar();"
      ]);

    final exportableProject =
        await assembler.assembleAction(project, project.actions.first, "test");

    final writableFilesMap = Map.fromEntries(await exportableProject.files
        .asyncMap((f) async =>
            MapEntry(f.relativePath, await utf8.decodeStream(f.data)))
        .toList());

    expect(
      writableFilesMap["./bin/main.dart"],
      contains(
          """..registerStatelessEntity("cloudstation.user.Service", UserEntity)"""),
    );

    expect(
      writableFilesMap["./protocols/models.proto"],
      contains("""message Foo {"""),
    );
  });
}
