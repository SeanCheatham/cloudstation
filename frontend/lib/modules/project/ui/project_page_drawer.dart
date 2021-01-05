import '../project_bloc.dart';
import 'package:cloudstation/models/project_state.dart';
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
      builder: (context, state) =>
          _drawerForProject(context, state.project.projectId),
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
            title: Text('Models'),
            onTap: () {
              pageSelected(ProjectPageId.models);
            },
          ),
          ListTile(
            title: Text('Event Sourced Entities'),
            onTap: () {
              pageSelected(ProjectPageId.eventSourcedEntities);
            },
          ),
          ListTile(
            title: Text('Replicated Entities'),
            onTap: () {
              pageSelected(ProjectPageId.replicatedEntities);
            },
          ),
          ListTile(
            title: Text('Actions'),
            onTap: () {
              pageSelected(ProjectPageId.actions);
            },
          ),
        ],
      ),
    );
  }
}

enum ProjectPageId { models, eventSourcedEntities, replicatedEntities, actions }
