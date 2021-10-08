// import 'package:android_time_tracker/services/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/common/constant_page.dart';
// import 'package:provider/provider.dart';

class CustomShowDialog extends StatefulWidget {
  @override
  _CustomShowDialogState createState() => _CustomShowDialogState();
}

class _CustomShowDialogState extends State<CustomShowDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.pink,
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(15))),
        ),
        Positioned(
            top: 10,
            left: 50,
            child: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: green),
            ))
      ]),
    );
  }
}

class CustomNotificationDialog extends StatelessWidget {
  CustomNotificationDialog({Key? key, required this.text1, required this.text2})
      : super(key: key);

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetAnimationDuration: Duration(milliseconds: 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.transparent,
        ),
        Positioned(
          top: 10,
          left: 180,
          child: Container(
            padding: EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
            margin: EdgeInsets.only(top: 16.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      brandColor,
                    ],
                    stops: [
                      .09,
                      1.0
                    ]),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(17),
                  bottomRight: Radius.circular(17),
                  bottomLeft: Radius.circular(17),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0),
                  ),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text1,
                  style: fifteenBlackTextStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 35.0),
                  child: Text(
                    text2,
                    style: fifteenBlackTextStyle,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: fifteenBlackTextStyle,
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
