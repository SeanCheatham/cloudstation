import 'package:cloudstation/ui/pages/project/project.dart';
import 'package:cloudstation/ui/pages/project/widgets/project_page_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CloudstationApp());
}

class CloudstationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CloudStation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProjectPage(
        projectId: "my-cloudstation-app",
        initialProjectPageId: ProjectPageId.eventSourcedEntities,
      ),
    );
  }
}
