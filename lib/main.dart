import 'package:account/screen/login.dart';
import 'package:account/screen/userinfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AccountApp());
}
class AccountApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: UserInfo(),
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue
      ),
    );
  }
}