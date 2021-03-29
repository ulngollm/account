import 'package:account/view/login/view_model.dart';
import 'package:account/widget/form/form_login.dart';
import 'package:account/widget/layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, _) =>
          BasicLayout(
            bodyWidget: LoginForm(), 
            pageTitle: 'Авторизация',
            bckgColor: CupertinoColors.white,
          ),
      viewModelBuilder: () {
        return LoginViewModel();
      },
      onModelReady: (model) {
        // model.getSavedToken();
      },
    );
  }
}
