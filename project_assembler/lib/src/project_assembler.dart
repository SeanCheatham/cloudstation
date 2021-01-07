import 'package:cloudstation_protocols/generated/domain.pb.dart' as d;
import 'dart:convert';

Stream<ExportableEntity> assembleProject(d.Project project) {}

class ExportableEntity {
  final Stream<WritableFile> files;

  ExportableEntity(this.files);
}

abstract class WritableFile {
  final String relativePath;

  WritableFile(this.relativePath);

  Stream<int> get data;
}

class StringWritableFile extends WritableFile {
  final String stringData;

  StringWritableFile(String relativePath, this.stringData)
      : super(relativePath);

  @override
  Stream<int> get data => Stream.fromIterable(utf8.encode(stringData));
}
