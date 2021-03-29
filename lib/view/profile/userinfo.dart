import 'package:account/widget/cupertino_list/cupertino_list_divider.dart';
import 'package:account/widget/cupertino_list/cupertino_list_section.dart';
import 'package:account/widget/layout.dart';
import 'package:flutter/cupertino.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasicLayout(
      pageTitle: 'Мой профиль',
      bckgColor: CupertinoColors.extraLightBackgroundGray,
      bodyWidget: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 25),
          child: Column(
            children: [
              CupertinoListSection(),
              CupertinoListSectionDivider(),
              // VerticalDivider(),
              CupertinoListSection()
            ],
          ),
        ),
      ),
    );
  }
}
