import 'package:cloudstation_project_assembler/src/assemblers/dart_assembler.dart';
import 'package:cloudstation_protocols/generated/domain.pb.dart' as d;
import 'dart:convert';
import 'package:async/async.dart' show StreamGroup;

Stream<ExportableEntity> assembleProject(d.Project project) {
  return StreamGroup.merge([
    Stream.fromIterable(project.actions).asyncMap(
        (action) => DartAssembler().assembleAction(project, action, "")),
  ]);
}

class ExportableEntity {
  final Stream<WritableFile> files;

  ExportableEntity(this.files);
}

abstract class WritableFile {
  final String relativePath;

  WritableFile(this.relativePath);

  Stream<List<int>> get data;
}

class StringWritableFile extends WritableFile {
  final String stringData;

  StringWritableFile(String relativePath, this.stringData)
      : super(relativePath);

  @override
  Stream<List<int>> get data => Stream.value(utf8.encode(stringData));
}
