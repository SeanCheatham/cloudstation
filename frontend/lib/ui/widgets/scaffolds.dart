import 'package:cloudstation/ui/widgets/headers.dart';
import 'package:flutter/material.dart';

class LeftRight extends StatefulWidget {
  final String leftTitle;
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
    @required this.leftTitle,
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
        LimitedBox(maxWidth: widget.leftColumnMaxWidth, child: left(context)),
        VerticalDivider(),
        Expanded(child: body(context)),
      ],
    );
  }

  Widget left(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: H1(widget.leftTitle),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        ),
        Flexible(child: itemsList(context)),
        _addItemTile,
        Spacer(),
      ],
    );
  }

  Widget itemsList(BuildContext context) {
    return ListView.builder(
      itemCount: widget.itemCount,
      itemBuilder: (context, idx) => ListTile(
        title: widget.itemBuilder(context, idx),
        onTap: () => widget.itemSelected(idx),
      ),
    );
  }

  Widget get _addItemTile {
    return Center(
      child: IconButton(
        icon: Icon(Icons.add),
        onPressed: widget.onNewItem,
      ),
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
