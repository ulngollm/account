import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Form(
        child: Column(
          children: [
            CupertinoTextField(
              placeholder: 'Имя',
              
            ),
            
          ],
        ),
      ),
    );
  }
}
