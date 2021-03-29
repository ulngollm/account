import 'package:account/widget/layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return BasicLayout(
      bodyWidget: Container(),
      pageTitle: 'Мой профиль',
      bckgColor: CupertinoColors.extraLightBackgroundGray,
    );
  }
}
