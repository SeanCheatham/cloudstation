import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  final String text;

  const H1(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12, bottom: 6),
      child: Text(text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
    );
  }
}
