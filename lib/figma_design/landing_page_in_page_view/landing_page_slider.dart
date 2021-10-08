import 'package:flutter/material.dart';

import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/figma_design/landing_page_in_page_view/landing_page.dart';
import '../on_board/login_page.dart';
import 'package:ui_practice/figma_design/page_slider/corousel_class.dart';
import 'package:page_indicator/page_indicator.dart';
import '../on_board/sign_up_page.dart';

class LandingPageSlider extends StatefulWidget {
  @override
  _LandingPageSliderState createState() => _LandingPageSliderState();
}

class _LandingPageSliderState extends State<LandingPageSlider> {
  int slideIndex = 0;
  PageController controller = PageController();

  final marker = Container(
    height: 3,
    width: 90,
    color: brandColor.withOpacity(0.2),
  );

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    List<Widget> list = [
      LandingPage(
        image: 'images/hand.jpg',
        text1: 'Gain total control',
        text2: 'of your money',
        text3: 'Become your own money manager',
        text4: 'and make every cent count',
      ),
      LandingPage(
        image: 'images/moneylosing.jpg',
        text1: 'Know where your',
        text2: 'money goes',
        text3: 'Track your transaction easily',
        text4: 'with categories and financial report',
      ),
      LandingPage(
        image: 'images/planpic.jpg',
        text1: 'Planning ahead',
        text2: 'of your money',
        text3: 'Become your own money manager',
        text4: 'and make every cent count',
      ),
    ];

    final PageIndicatorContainer container = new PageIndicatorContainer(
      child: new PageView(
        children: list,
        controller: controller,
      ),
      length: list.length,
      align: IndicatorAlign.bottom,
      padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
      indicatorSpace: 8,
      indicatorColor: brandColor.withOpacity(0.2),
      indicatorSelectorColor: brandColor,
      shape: IndicatorShape.circle(),
    );

    return SafeArea(child: Scaffold(
      body: OrientationBuilder(builder: (_, orientation) {
        if (orientation == Orientation.portrait) {
          return Container(
            child: Column(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.62,
                    child: container),
                Container(
                  height: MediaQuery.of(context).size.height * 0.22,
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.002,
                      right: 2,
                      left: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // SizedBox(
                          //   height: height / 0.7,
                          // ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 40.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpPage()));
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Color(0xFF7F3DFF),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Center(
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        fontFamily: 'Gotham',
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 40.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LogInPage()));
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Color(0xFFEEE5FF),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Center(
                                  child: Text(
                                    'Log In',
                                    style: TextStyle(
                                        fontFamily: 'Gotham',
                                        fontSize: 18,
                                        color: Color(0xFF7F3DFF),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          );
        } else {
          return Container(
            child: Column(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.62,
                    child: container),
                Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.0015,
                      right: 2,
                      left: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // SizedBox(
                          //   height: height / 0.7,
                          // ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 40.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpPage()));
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.40,
                                decoration: BoxDecoration(
                                    color: Color(0xFF7F3DFF),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Center(
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        fontFamily: 'Gotham',
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.008,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 40.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LogInPage()));
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.4,
                                decoration: BoxDecoration(
                                    color: Color(0xFFEEE5FF),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Center(
                                  child: Text(
                                    'Log In',
                                    style: TextStyle(
                                        fontFamily: 'Gotham',
                                        fontSize: 18,
                                        color: Color(0xFF7F3DFF),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          );
        }
      }),
    ));
  }
}
