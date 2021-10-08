import 'package:flutter/material.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/common/show_dialog.dart';

class NotificationPage extends StatelessWidget {
  createAlertDialog(BuildContext context) {
    return showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CustomNotificationDialog(
            text1: 'Mark all as read',
            text2: 'Remove all',
          );
        });
  }

  // produceAlertDialog(BuildContext context) {
  //   return showDialog(
  //       context: context,
  //       builder: (context) {
  //         return Dialog(
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(10.0),
  //           ),
  //           child: Container(
  //             color: red,
  //             height: 100,
  //             width: 80,
  //             child: Padding(
  //               padding: const EdgeInsets.all(12.0),
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Text(
  //                     'Mark all read',
  //                     style: fifteenBlackTextStyle,
  //                   ),
  //                   SizedBox(
  //                     height: 10,
  //                   ),
  //                   Text(
  //                     'Remove all',
  //                     style: fifteenBlackTextStyle,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            height: 64,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: black,
                  size: 30,
                ),
                SizedBox(
                  width: 50,
                ),
                Center(
                  child: Text(
                    'Notification',
                    style: TextStyle(
                        color: black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter'),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () {
                    createAlertDialog(context);
                  },
                  child: Container(
                    height: 32,
                    width: 32,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          color: black,
                          height: 5,
                          width: 5,
                        ),
                        Container(
                          color: black,
                          height: 5,
                          width: 5,
                        ),
                        Container(
                          color: black,
                          height: 5,
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          DetailsBox(text1: 'Shopping', text2: 'Your shopping'),
          DetailsBox(text1: 'Utilities', text2: 'Your utilities'),
        ],
      ),
    ));
  }
}

class DetailsBox extends StatelessWidget {
  DetailsBox({Key? key, required this.text1, required this.text2})
      : super(key: key);

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Flexible(
                    child: Container(
                  height: 30,
                  width: 250,
                  child: Center(
                    child: Text(
                      '$text1 budget has exceeded the limits',
                      overflow: TextOverflow.ellipsis,
                      style: fifteenBlackTextStyle,
                    ),
                  ),
                )),
                Flexible(
                    child: Container(
                  width: 250,
                  height: 30,
                  child: Center(
                    child: Text(
                      '$text2 budget has exceeded the limits',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: ass,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                )),
              ],
            ),
            Container(
                height: 60,
                width: 51,
                child: Center(
                    child: Text(
                  '19 : 30',
                  style: TextStyle(
                      color: ass,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700),
                ))),
          ],
        ),
      ),
    );
  }
}
