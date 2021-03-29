import 'package:account/view/profile/userinfo.dart';
import 'package:flutter/cupertino.dart';

class LoginForm extends StatelessWidget {
  const LoginForm();

  @override
  Widget build(BuildContext context) {
    return Column(
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
                        color: CupertinoColors.separator
                        ),
                  ),
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
                        color: CupertinoColors.separator
                        ),
                  ),
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
                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>UserInfo()));
                  }),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('Ещё нет аккаунта?'),
                CupertinoButton(child: Text('Присоединиться'), onPressed: () {})
              ]),
            ]),
          ),
        ),
      ],
    );
  }
}
