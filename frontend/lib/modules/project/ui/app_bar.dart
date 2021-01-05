import 'package:cloudstation/models/project_state.dart';
import 'package:flutter/material.dart';

class ProjectAppBar {
  final ProjectState state;
  final Function(dynamic) addEvent;
  final String title;

  const ProjectAppBar({this.state, this.addEvent, this.title});

  AppBar get widget {
    return AppBar(
      title: Text(title),
      actions: [
        IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.backup),
          onPressed: () {},
        ),
      ],
    );
  }
}
