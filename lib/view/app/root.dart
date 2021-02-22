import 'package:account/view/app/view_model.dart';
import 'package:account/view/login/login.dart';
import 'package:account/view/profile/userinfo.dart';
import 'package:flutter/cupertino.dart';

class AccountApp extends StatelessWidget {
  final _viewModel = RootViewModel();
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: _viewModel.hasToken ? UserInfo() : Login(),
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue
      ),
    );
  }
}
