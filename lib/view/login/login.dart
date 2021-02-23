import 'package:account/view/login/view_model.dart';
import 'package:account/view/profile/userinfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, _) => CupertinoPageScaffold(
          child: model.busy(model.hasToken)
              ? Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => UserInfo()))
              : NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                      CupertinoSliverNavigationBar(
                        backgroundColor: CupertinoColors.white,
                        largeTitle: Text('Авторизация'),
                        border: null,
                      ),
                    ];
                  },
                  body: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CupertinoTextField(
                                placeholder: 'Ваш E-mail',
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color:
                                              Theme.of(context).dividerColor)),
                                ),
                              ),
                              SizedBox(height: 25),
                              CupertinoTextField(
                                placeholder: 'Пароль',
                                suffix: CupertinoButton(
                                  child: Text("Забыли пароль?"),
                                  onPressed: () {},
                                ),
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color:
                                              Theme.of(context).dividerColor)),
                                ),
                                onChanged: (String value) {
                                  print(value);
                                },
                              )
                            ],
                          ),
                        )),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 80),
                            child: Column(children: [
                              CupertinoButton.filled(
                                  child: Text('Войти'),
                                  onPressed: () {
                                    print(1);
                                  }),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Ещё нет аккаунта?'),
                                    CupertinoButton(
                                        child: Text('Присоединиться'),
                                        onPressed: () {})
                                  ]),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
      viewModelBuilder: () {
        return LoginViewModel();
      },
      onModelReady: (model) {
        model.getSavedToken();
      },
    );
  }
}
