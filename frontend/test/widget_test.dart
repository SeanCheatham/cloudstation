import 'package:cloudstation/ui/widgets/panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Basic test', (WidgetTester tester) async {
    final widget = Panel(title: "Title", child: Text("Hello"));
    await tester.pumpWidget(
      MaterialApp(home: Scaffold(body: widget)),
    );
    expect(find.text('Title'), findsOneWidget);
    expect(find.text('Hello'), findsOneWidget);
  });
}
