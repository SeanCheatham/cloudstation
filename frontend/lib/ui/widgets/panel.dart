import 'package:cloudstation/ui/widgets/headers.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Panel extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget hint;
  final bool initiallyExpanded;

  const Panel(
      {Key key,
      @required this.title,
      @required this.child,
      this.hint,
      this.initiallyExpanded = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ExpandablePanel(
          header: H1(title),
          expanded: child,
          collapsed: hint,
          controller: ExpandableController(initialExpanded: initiallyExpanded),
        ),
      ),
    );
  }
}
