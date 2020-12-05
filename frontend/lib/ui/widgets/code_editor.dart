import 'package:code_editor/code_editor.dart';
import 'package:flutter/material.dart';

class SimpleCodeEditor extends StatelessWidget {
  final String code;
  final String language;
  final Function(String, String) onCodeChanged;

  const SimpleCodeEditor(
      {Key key,
      @required this.code,
      this.language,
      @required this.onCodeChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CodeEditor(
      model: EditorModel(
        files: [
          FileEditor(
            code: code,
            language: language,
          )
        ],
        styleOptions: EditorModelStyleOptions(
          editorToolButtonColor: Colors.blueGrey,
        ),
      ),
      edit: true,
      disableNavigationbar: true,
      onSubmit: onCodeChanged,
    );
  }
}
