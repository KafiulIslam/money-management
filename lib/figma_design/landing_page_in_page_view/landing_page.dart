import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage(
      {Key? key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4})
      : super(key: key);

  final String image;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.305,
              width: MediaQuery.of(context).size.width * 0.50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.contain)),
            ),
          ),

          Container(
            // color: Colors.yellowAccent,
            height: MediaQuery.of(context).size.height * 0.22,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width,
                        child: FittedBox(
                          child: Text(
                            text1,
                            style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width,
                        child: FittedBox(
                          child: Text(
                            text2,
                            style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.018),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.032,
                        width: MediaQuery.of(context).size.width,
                        child: FittedBox(
                          child: Text(
                            text3,
                            style: TextStyle(
                                fontFamily: 'Brandon Grotesque',
                                fontSize: 15,
                                color: Color(0xFFC8C8CF),
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.032,
                        width: MediaQuery.of(context).size.width,
                        child: FittedBox(
                          child: Text(
                            text4,
                            style: TextStyle(
                                fontFamily: 'Brandon Grotesque',
                                fontSize: 15,
                                color: Color(0xFFC8C8CF),
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          // SizedBox(height: height * 0.04),
        ],
      ),
    ));
  }
}
