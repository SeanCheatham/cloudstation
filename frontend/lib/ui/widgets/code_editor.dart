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
          heightOfContainer: null,
        ),
      ),
      edit: true,
      disableNavigationbar: true,
      onSubmit: onCodeChanged,
    );
  }
}

class MultiCodeEditor extends StatelessWidget {
  final String language;
  final List<MultiCodeEditorItem> items;

  const MultiCodeEditor({Key key, this.language, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final item in items)
          if (item is ReadOnlyCodeItem)
            ReadOnlyCodeViewer(
              code: item.code,
              language: language,
            )
          else if (item is WritableCodeItem)
            Container(
              decoration: BoxDecoration(
                  border: Border.symmetric(
                      horizontal: BorderSide(
                color: Colors.lightBlue,
              ))),
              child: SimpleCodeEditor(
                code: item.code,
                language: language,
                onCodeChanged: item.onCodeChanged,
              ),
            )
      ],
    );
  }
}

abstract class MultiCodeEditorItem {}

class ReadOnlyCodeItem extends MultiCodeEditorItem {
  final String code;

  ReadOnlyCodeItem(this.code);
}

class WritableCodeItem extends MultiCodeEditorItem {
  final String code;
  final Function(String, String) onCodeChanged;

  WritableCodeItem(this.code, this.onCodeChanged);
}

class ReadOnlyCodeViewer extends StatelessWidget {
  final String code;
  final String language;

  const ReadOnlyCodeViewer({Key key, this.code, this.language})
      : super(key: key);

  List<String> get codeLines => code.split('\n');

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
          heightOfContainer: null,
        ),
      ),
      edit: false,
      disableNavigationbar: true,
    );
  }
}
