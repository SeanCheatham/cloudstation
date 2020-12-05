import 'package:flutter/material.dart';

class SingleValueForm extends StatefulWidget {
  final Function(String) onValueSaved;
  final String initialValue;
  final String Function(String) validator;

  const SingleValueForm(
      {Key key, @required this.onValueSaved, this.initialValue, this.validator})
      : super(key: key);

  @override
  _SingleValueFormState createState() => _SingleValueFormState();
}

class _SingleValueFormState extends State<SingleValueForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _textFieldController;

  @override
  void initState() {
    super.initState();
    _textFieldController = TextEditingController(
      text: widget.initialValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: _textFieldController,
              validator: widget.validator,
            ),
          ),
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              if (_formKey.currentState.validate())
                widget.onValueSaved(_textFieldController.text);
            },
          )
        ],
      ),
    );
  }
}
