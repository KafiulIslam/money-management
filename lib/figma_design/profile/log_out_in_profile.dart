import 'package:flutter/material.dart';
import 'package:ui_practice/common/constant_page.dart';

class LogOutInProfile extends StatefulWidget {
  @override
  _LogOutInProfileState createState() => _LogOutInProfileState();
}

class _LogOutInProfileState extends State<LogOutInProfile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

          // color: white,
        ),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.65,
            child: Container(
              // height: 495,
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                color: white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 3,
                      width: 36,
                      color: ass,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 175,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                            height: 48,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                'Logout ?',
                                style: eighteenBlackTextStyle,
                              ),
                            ),
                          ),
                          Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                'Are sure to log out ?',
                                style: eighteenAssInterTextStyle,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 56,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: waterAss),
                                  child: Center(
                                    child: Text(
                                      "Yes",
                                      style: TextStyle(
                                          color: brandColor,
                                          fontSize: 18,
                                          fontFamily: 'Inter'),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context, false);
                                  },
                                  child: Container(
                                    height: 56,
                                    width: 160,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: brandColor),
                                    child: Center(
                                      child: Text(
                                        "No",
                                        style: TextStyle(
                                            color: white,
                                            fontSize: 18,
                                            fontFamily: 'Inter'),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // height: MediaQuery.of(context).size.height,

              // color: Colors.white,
            ))
      ]),
    );
  }
}
