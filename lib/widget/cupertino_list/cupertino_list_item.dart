import 'package:flutter/cupertino.dart';

class CupertinoListItem extends StatelessWidget {
  Widget listItemLabel;
  Widget listItemValue;
  CupertinoListItem({String label, String value}) {
    listItemLabel = Text(label);
    listItemValue = Text(value, style: TextStyle(color: CupertinoColors.inactiveGray),);
  }
  CupertinoListItem.fromWidgets({Widget labelWidget, Widget valueWidget}) {
    
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          listItemLabel,
          listItemValue
        ],
      ),
    );
  }
}
