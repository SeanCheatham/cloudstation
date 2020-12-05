import 'package:cloudstation/logic/project_bloc.dart';
import 'package:cloudstation/models/projects/project_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectPageDrawer extends StatelessWidget {
  final ProjectPageId projectPageId;
  final Function(ProjectPageId) pageSelected;

  const ProjectPageDrawer(
      {Key key, @required this.projectPageId, @required this.pageSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectBloc, ProjectState>(
      builder: (context, state) => _drawerForProject(context, state.projectId),
    );
  }

  Widget _drawerForProject(BuildContext context, String projectId) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text(projectId),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Project Configuration'),
            onTap: () {
              pageSelected(ProjectPageId.projectConfiguration);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Models'),
            onTap: () {
              pageSelected(ProjectPageId.models);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Event Sourced Entities'),
            onTap: () {
              pageSelected(ProjectPageId.eventSourcedEntities);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('CRDTs'),
            onTap: () {
              pageSelected(ProjectPageId.crdts);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Operations'),
            onTap: () {
              pageSelected(ProjectPageId.operations);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

enum ProjectPageId {
  projectConfiguration,
  models,
  eventSourcedEntities,
  crdts,
  operations
}
