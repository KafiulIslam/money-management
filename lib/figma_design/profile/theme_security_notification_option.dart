import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/common/constant_page.dart';

class ThemeOptions extends StatefulWidget {
  @override
  _ThemeOptionsState createState() => _ThemeOptionsState();
}

class _ThemeOptionsState extends State<ThemeOptions> {
  bool markSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              markSwitch = !markSwitch;
              var index = 0;
              if (!markSwitch) {
                index = 1;
              }
            });
          },
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(border: Border.all(color: ass.withOpacity(0.1))),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Light',
                        style: TextStyle(
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inter'),
                      ),
                      markSwitch
                          ? Container()
                          : Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                  color: darkBlue,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                  child: Icon(
                                Icons.done,
                                color: white,
                                size: 20,
                              )),
                            )
                    ]),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              markSwitch = !markSwitch;
              var index = 0;
              if (!markSwitch) {
                index = 1;
              }
            });
          },
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(border: Border.all(color: ass.withOpacity(0.1))),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dark',
                        style: TextStyle(
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inter'),
                      ),
                      markSwitch
                          ? Container()
                          : Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                  color: darkBlue,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                  child: Icon(
                                Icons.done,
                                color: white,
                                size: 20,
                              )),
                            )
                    ]),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              markSwitch = !markSwitch;
              var index = 0;
              if (!markSwitch) {
                index = 1;
              }
            });
          },
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(border: Border.all(color: ass.withOpacity(0.1))),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Use device theme',
                        style: TextStyle(
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inter'),
                      ),
                      markSwitch
                          ? Container()
                          : Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                  color: darkBlue,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                  child: Icon(
                                Icons.done,
                                color: white,
                                size: 20,
                              )),
                            )
                    ]),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

class SecurityOptions extends StatefulWidget {
  @override
  _SecurityOptionsState createState() => _SecurityOptionsState();
}

class _SecurityOptionsState extends State<SecurityOptions> {
  bool markSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              markSwitch = !markSwitch;
              var index = 0;
              if (!markSwitch) {
                index = 1;
              }
            });
          },
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(border: Border.all(color: ass.withOpacity(0.1))),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pin',
                        style: TextStyle(
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inter'),
                      ),
                      markSwitch
                          ? Container()
                          : Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                  color: darkBlue,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                  child: Icon(
                                Icons.done,
                                color: white,
                                size: 20,
                              )),
                            )
                    ]),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              markSwitch = !markSwitch;
              var index = 0;
              if (!markSwitch) {
                index = 1;
              }
            });
          },
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(border: Border.all(color: ass.withOpacity(0.1))),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Finger Print',
                        style: TextStyle(
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inter'),
                      ),
                      markSwitch
                          ? Container()
                          : Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                  color: darkBlue,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                  child: Icon(
                                Icons.done,
                                color: white,
                                size: 20,
                              )),
                            )
                    ]),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              markSwitch = !markSwitch;
              var index = 0;
              if (!markSwitch) {
                index = 1;
              }
            });
          },
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(border: Border.all(color: ass.withOpacity(0.1))),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Face Id',
                        style: TextStyle(
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inter'),
                      ),
                      markSwitch
                          ? Container()
                          : Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                  color: darkBlue,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                  child: Icon(
                                Icons.done,
                                color: white,
                                size: 20,
                              )),
                            )
                    ]),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

class NotificationOption extends StatefulWidget {
  @override
  _NotificationOptionState createState() => _NotificationOptionState();
}

class _NotificationOptionState extends State<NotificationOption> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        TileInNotificationInProfile(
            text1: 'Expense Alert',
            text2: 'Get notification about your expense'),
        TileInNotificationInProfile(
            text1: 'Budget Alert',
            text2: 'Get notification when your budget is exceeding the limit'),
        TileInNotificationInProfile(
            text1: 'Tips and Articles',
            text2: 'Small and useful pieces of practical financial advice'),
      ],
    ));
  }
}

class TileInNotificationInProfile extends StatefulWidget {
  TileInNotificationInProfile(
      {Key? key, required this.text1, required this.text2})
      : super(key: key);
  final String text1;
  final String text2;

  @override
  _TileInNotificationInProfileState createState() =>
      _TileInNotificationInProfileState();
}

class _TileInNotificationInProfileState
    extends State<TileInNotificationInProfile> {
  bool buttonSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60,
              width: 220,
              child: Column(
                children: [
                  Container(
                      height: 20,
                      width: 220,
                      child: Text(
                        widget.text1,
                        style: fifteenBlackTextStyle,
                      )),
                  Container(
                      height: 35,
                      width: 220,
                      child: Text(
                        widget.text2,
                        maxLines: 2,
                        style: TextStyle(
                            color: ass,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700),
                      )),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 24,
                  width: 42,
                  decoration: BoxDecoration(
                      color: buttonSwitch
                          ? brandColor.withOpacity(0.4)
                          : brandColor,
                      borderRadius: BorderRadius.circular(16)),
                ),
                Positioned(
                  top: 2,
                  right: buttonSwitch ? 20 : 2,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        buttonSwitch = !buttonSwitch;

                        var index = 0;
                        if (!buttonSwitch) {
                          index = 1;
                        }
                      });
                    },
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
