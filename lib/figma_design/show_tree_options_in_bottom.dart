import 'package:flutter/material.dart';
import 'package:ui_practice/figma_design/account_balance.dart';

class ShowThreeStar extends StatefulWidget {
  @override
  _ShowThreeStarState createState() => _ShowThreeStarState();
}

class _ShowThreeStarState extends State<ShowThreeStar> {
  _createAlertDialog(BuildContext context) {
    return showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        useRootNavigator: false,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return TransparentShowBoxWithThreeOptions();
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _createAlertDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
