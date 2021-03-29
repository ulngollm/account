import 'package:account/view/login/login.dart';
import 'package:flutter/cupertino.dart';

class AccountApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Login(),
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue,
        scaffoldBackgroundColor: CupertinoColors.extraLightBackgroundGray
      ),
    );
  }
}
