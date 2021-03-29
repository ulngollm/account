import 'package:account/widget/cupertino_list/cupertino_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoListSection extends StatelessWidget {
  // final Map<String, dynamic> data;

  // CupertinoListSection(this.data);
  CupertinoListSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: CupertinoColors.separator),
          top: BorderSide(color: CupertinoColors.separator),
        ),
        color: CupertinoColors.white
      ),
      child: Column(
        children: [
          CupertinoListItem(label: 'ИИмя', value: 'Value'),
          Divider(height: 1),
          CupertinoListItem(label: 'ИИмя', value: 'Value'),
          Divider(height: 1),
          CupertinoListItem(label: 'ИИмя', value: 'Value'),
          Divider(height: 1),
          CupertinoListItem(label: 'ИИмя', value: 'Value'),
        ],
      ),
    );
  }
}
