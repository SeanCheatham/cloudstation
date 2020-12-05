import 'package:cloudstation/logic/project_bloc.dart';
import 'package:cloudstation/ui/pages/project/crdt_entities_page.dart';
import 'package:cloudstation/ui/pages/project/event_sourced_entities_page.dart';
import 'package:cloudstation/ui/pages/project/models_page.dart';
import 'package:cloudstation/ui/pages/project/widgets/project_page_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloudstation/models/projects/project_events.dart' as events;
import 'package:cloudstation/models/projects/project_states.dart' as states;

class ProjectPage extends StatefulWidget {
  final String projectId;
  final ProjectPageId initialProjectPageId;

  const ProjectPage(
      {Key key, @required this.projectId, this.initialProjectPageId})
      : super(key: key);

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  ProjectPageId _currentProjectPageId;
  ProjectBloc _projectBloc;

  @override
  void initState() {
    super.initState();
    this._currentProjectPageId = widget.initialProjectPageId;
    this._projectBloc = ProjectBloc(widget.projectId);
    _projectBloc.add(mockLoadProject);
  }

  @override
  void dispose() {
    super.dispose();
    _projectBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold(
        appBar: buildAppBar(),
        body: _pageBody(context),
        drawer: ProjectPageDrawer(
          projectPageId: _currentProjectPageId,
          pageSelected: (pageId) => setState(() {
            this._currentProjectPageId = pageId;
          }),
        ));

    return BlocProvider.value(
      value: _projectBloc,
      child: scaffold,
    );
  }

  AppBar buildAppBar() => AppBar(
        title: Row(children: [
          Text(widget.projectId),
          Icon(Icons.arrow_right_rounded),
          Text(_pageTitle),
        ]),
      );

  Widget _pageBody(BuildContext context) {
    return BlocBuilder<ProjectBloc, states.ProjectState>(
      builder: (context, state) {
        if (state is states.LoadedProjectState)
          return _loadedPageBody;
        else
          return _unloadedPageBody;
      },
    );
  }

  Widget get _loadedPageBody {
    switch (_currentProjectPageId) {
      case ProjectPageId.projectConfiguration:
        // TODO: Handle this case.
        break;
      case ProjectPageId.models:
        return ModelsPage();
        break;
      case ProjectPageId.eventSourcedEntities:
        return EventSourcedEntitiesPage();
        break;
      case ProjectPageId.crdts:
        return CRDTEntitiesPage();
        break;
      case ProjectPageId.operations:
        // TODO: Handle this case.
        break;
    }
    return _unloadedPageBody;
  }

  String get _pageTitle {
    switch (_currentProjectPageId) {
      case ProjectPageId.projectConfiguration:
        return "Project Configuration";
        break;
      case ProjectPageId.models:
        return "Models";
        break;
      case ProjectPageId.eventSourcedEntities:
        return "Event Sourced Entities";
        break;
      case ProjectPageId.crdts:
        return "CRDTs";
        break;
      case ProjectPageId.operations:
        return "Operations";
        break;
    }
    return "Project";
  }

  Widget get _unloadedPageBody => Center(
        child: CircularProgressIndicator(),
      );
}
