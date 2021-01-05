import 'package:cloudstation/models/project_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloudstation_event_handler/event_handler.dart' as eventHandler;
import 'package:cloudstation_command_handler/command_handler.dart'
    as commandHandler;
import 'package:cloudstation_protocols/generated/domain.pb.dart' as d;
import 'package:logging/logging.dart';

class ProjectBloc extends Bloc<dynamic, ProjectState> {
  final ProjectState initialState;

  ProjectBloc(this.initialState) : super(initialState);

  final _logger = Logger("ProjectBloc");

  factory ProjectBloc.fromProjectId(String projectId) {
    return ProjectBloc(ProjectState(d.Project()..projectId = projectId));
  }

  @override
  Stream<ProjectState> mapEventToState(command) {
    if (commandHandler.isCommand(command)) {
      final validationErrors =
          commandHandler.validateCommand(state.project, command);
      if (validationErrors.isEmpty) {
        final events = commandHandler.commandToEvents(state.project, command);
        for (final event in events) add(event);
        return Stream.empty();
      } else {
        for (final error in validationErrors)
          _logger.warning(
              "Invalid Command.  code=${error.code} reason=${error.reason}");
        return Stream.empty();
      }
    } else if (commandHandler.isEvent(command)) {
      final updatedProject =
          eventHandler.mapEventToState(state.project, command);
      return Stream.value(ProjectState(updatedProject));
    } else {
      return Stream.empty();
    }
  }
}
