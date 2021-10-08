import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/financial_report_page/financial_report.dart';

class CarouselClassOne extends StatefulWidget {
  CarouselClassOne({
    Key? key,
    required this.backgroundColor,
    required this.text1,
    required this.dollar,
    required this.details,
    required this.iconInTab,
    required this.iconNextToText1,
    required this.iconColor,
    required this.textInTab,
    required this.balanceDollar,
  }) : super(key: key);

  final Color backgroundColor;
  final String text1;
  final IconData iconNextToText1;
  final String dollar;
  final String details;
  final IconData iconInTab;
  final Color iconColor;
  final String textInTab;
  final String balanceDollar;

  @override
  _CarouselClassOneState createState() => _CarouselClassOneState();
}

class _CarouselClassOneState extends State<CarouselClassOne> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: widget.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   height: 3,
            //   width: MediaQuery.of(context).size.width,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //         height: 3,
            //         width: 90,
            //         color: white.withOpacity(0.2),
            //       ),
            //       Container(
            //         height: 3,
            //         width: 90,
            //         color: white.withOpacity(0.2),
            //       ),
            //       Container(
            //         height: 3,
            //         width: 90,
            //         color: white.withOpacity(0.2),
            //       ),
            //       Container(
            //         height: 3,
            //         width: 90,
            //         color: white.withOpacity(0.2),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 60,
            ),
            Container(
              height: 30,
              width: 132,
              child: Center(
                child: Text(
                  'This Month',
                  style: TextStyle(
                      fontSize: 22,
                      color: white.withOpacity(0.6),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              height: 40,
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.text1,
                    style: TextStyle(
                        color: white,
                        fontSize: 30,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Icon(
                    widget.iconNextToText1,
                    size: 40,
                    color: white,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 80,
              width: 180,
              child: Text(
                widget.dollar,
                style: TextStyle(
                    color: white,
                    fontSize: 50,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              height: 220,
              width: width,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(17),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 58,
                      width: width,
                      child: Center(
                        child: Text(
                          widget.details,
                          style: twentyTwoBlackInterTextStyle,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 64,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: ass.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: gold.withOpacity(0.2)),
                            child: Icon(
                              widget.iconInTab,
                              color: widget.iconColor,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            widget.textInTab,
                            style: fifteenBlackTextStyle,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 44,
                      width: 120,
                      child: Center(
                        child: Text(
                          widget.balanceDollar,
                          style: TextStyle(
                              color: black,
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class BrandColorCarouselClassOne extends StatefulWidget {
  @override
  _BrandColorCarouselClassOneState createState() =>
      _BrandColorCarouselClassOneState();
}

class _BrandColorCarouselClassOneState
    extends State<BrandColorCarouselClassOne> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: brandColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   height: 3,
            //   width: MediaQuery.of(context).size.width,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //         height: 3,
            //         width: 90,
            //         color: white.withOpacity(0.2),
            //       ),
            //       Container(
            //         height: 3,
            //         width: 90,
            //         color: white.withOpacity(0.2),
            //       ),
            //       Container(
            //         height: 3,
            //         width: 90,
            //         color: white.withOpacity(0.2),
            //       ),
            //       Container(
            //         height: 3,
            //         width: 90,
            //         color: white.withOpacity(0.2),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 60,
            ),
            Container(
              height: 30,
              width: 132,
              child: Center(
                child: Text(
                  'This Month',
                  style: TextStyle(
                      fontSize: 22,
                      color: white.withOpacity(0.6),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              height: 70,
              width: width,
              child: Center(
                child: Text('2 of 12 budget is\nexceeds the limit',
                    style: TextStyle(
                        color: white,
                        fontSize: 30,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 64,
              width: width,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 64,
                      width: 150,
                      decoration: BoxDecoration(
                          color: white,
                          border: Border.all(color: ass.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: gold.withOpacity(0.2)),
                            child: Icon(
                              Icons.shopping_basket,
                              color: gold,
                              size: 25,
                            ),
                          ),
                          Text(
                            'Shopping',
                            style: eighteenBlackTextStyle,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 64,
                      width: 150,
                      decoration: BoxDecoration(
                          color: white,
                          border: Border.all(color: ass.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: red.withOpacity(0.2)),
                            child: Icon(
                              Icons.restaurant,
                              color: red,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Food',
                            style: eighteenBlackTextStyle,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class BrandColorCarouselClassTwo extends StatefulWidget {
  @override
  _BrandColorCarouselClassTwoState createState() =>
      _BrandColorCarouselClassTwoState();
}

class _BrandColorCarouselClassTwoState
    extends State<BrandColorCarouselClassTwo> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: brandColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   height: 3,
            //   width: MediaQuery.of(context).size.width,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //         height: 3,
            //         width: 90,
            //         color: white.withOpacity(0.2),
            //       ),
            //       Container(
            //         height: 3,
            //         width: 90,
            //         color: white.withOpacity(0.2),
            //       ),
            //       Container(
            //         height: 3,
            //         width: 90,
            //         color: white.withOpacity(0.2),
            //       ),
            //       Container(
            //         height: 3,
            //         width: 90,
            //         color: white.withOpacity(0.2),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 150,
            ),
            Container(
              height: 90,
              width: width,
              child: Center(
                child: Text(
                  '\"Financial freedom is\nfreedom for fear.\"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: white,
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
              height: 30,
              width: width,
              child: Center(
                child: Text(
                  '-Robert Kiyosaki',
                  style: TextStyle(
                      color: white,
                      fontSize: 22,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: 266,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FinancialReport()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    'See the full detail',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 15,
                        color: brandColor,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
