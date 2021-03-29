import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class BasicLayout extends StatelessWidget {
  final Widget bodyWidget;
  final String pageTitle;
  final Color bckgColor;

  const BasicLayout(
      {this.bodyWidget,
      this.pageTitle,
      this.bckgColor = CupertinoColors.extraLightBackgroundGray});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: bckgColor,
      child: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              CupertinoSliverNavigationBar(
                backgroundColor: bckgColor,
                largeTitle: Text(pageTitle??''),
                border: null,
              ),
            ];
          },
          body: bodyWidget,
        ),
      ),
    );
  }
}
