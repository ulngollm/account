import 'package:account/widget/cupertino_list/cupertino_list_item.dart';
import 'package:flutter/cupertino.dart';

class CupertinoListSection extends StatelessWidget {
  final Map<String, dynamic> data;

  CupertinoListSection(this.data);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
        color:CupertinoColors.white,
        border: Border(bottom: BorderSide(), top: BorderSide())
      ),
      child: ListView.separated(
        itemBuilder: itemBuilder, 
        separatorBuilder: separatorBuilder, 
        itemCount: itemCount)
      
    );
  }
}