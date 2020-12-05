import 'package:flutter/material.dart';

class LeftRight extends StatefulWidget {
  final Function() onNewItem;
  final int itemCount;
  final Function(BuildContext, int) itemBuilder;
  final Widget emptySelection;
  final Function(BuildContext, int) itemEditorBuilder;
  final int currentIndex;
  final Function(int) itemSelected;
  final double leftColumnMaxWidth;

  const LeftRight({
    Key key,
    @required this.onNewItem,
    @required this.itemCount,
    @required this.itemBuilder,
    @required this.emptySelection,
    @required this.itemEditorBuilder,
    @required this.currentIndex,
    @required this.itemSelected,
    this.leftColumnMaxWidth = 250,
  }) : super(key: key);

  @override
  _LeftRightState createState() => _LeftRightState();
}

class _LeftRightState extends State<LeftRight> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LimitedBox(
            maxWidth: widget.leftColumnMaxWidth, child: itemsList(context)),
        VerticalDivider(),
        Expanded(child: body(context)),
      ],
    );
  }

  Widget itemsList(BuildContext context) {
    return ListView.builder(
      itemCount: widget.itemCount + 1,
      itemBuilder: (context, idx) => idx == widget.itemCount
          ? _addItemTile
          : ListTile(
              title: widget.itemBuilder(context, idx),
              onTap: () => widget.itemSelected(idx),
            ),
    );
  }

  Widget get _addItemTile {
    return IconButton(
      icon: Icon(Icons.add),
      onPressed: widget.onNewItem,
    );
  }

  Widget body(BuildContext context) {
    if (widget.currentIndex == null) {
      return widget.emptySelection;
    } else {
      return SingleChildScrollView(
        child: widget.itemEditorBuilder(context, widget.currentIndex),
      );
    }
  }
}
