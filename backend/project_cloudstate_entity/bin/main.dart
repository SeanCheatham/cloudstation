import 'package:cloudstate/cloudstate.dart';
import 'package:cloudstation_project_entity/src/project_event_sourced_entity.dart';

void main() {
  Cloudstate()
    ..port = 8080
    ..address = 'localhost'
    ..registerEventSourcedEntity(
        'cloudstation.project.ProjectService', ProjectEventSourcedEntity)
    ..start();
}
