import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/figma_design/account_balance.dart';
import 'package:ui_practice/figma_design/create_budget/create_budget_page.dart';
import 'package:ui_practice/figma_design/create_budget/detail_budget.dart';

class BudgetForMay extends StatefulWidget {
  @override
  _BudgetForMayState createState() => _BudgetForMayState();
}

class _BudgetForMayState extends State<BudgetForMay> {
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

  bool appTitleSwitch = false;
  int _selectedIndex = 0;

  bool changeBackground = true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // changeBackground = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: brandColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.041),
            Container(
              height: 32,
              width: width,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios_outlined,
                            size: 22,
                            color: white,
                          )),
                    ),
                    Container(
                      height: 30,
                      width: 50,
                      child: Text(
                        'May',
                        style: TextStyle(
                            color: white,
                            fontFamily: 'Inter',
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      height: 32,
                      width: 32,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 22,
                            color: white,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * .11502,
            ),
            Container(
              height: height * .68009,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
                color: white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 32,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailBudget()));
                      },
                      child: Container(
                        height: 150,
                        width: width,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0, right: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 120,
                                width: width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 33,
                                      width: width,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 33,
                                            width: 100,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(17),
                                                border: Border.all(
                                                    color:
                                                        ass.withOpacity(0.2))),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  height: 14,
                                                  width: 14,
                                                  decoration: BoxDecoration(
                                                    color: gold,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                ),
                                                Container(
                                                  height: 16,
                                                  width: 80,
                                                  child: FittedBox(
                                                    child: Text(
                                                      'Shopping',
                                                      overflow:
                                                          TextOverflow.clip,
                                                      maxLines: 1,
                                                      softWrap: false,
                                                      style:
                                                          fifteenBlackTextStyle,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: red,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '!',
                                                style: TextStyle(
                                                    color: white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      height: 45,
                                      width: width,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 25,
                                            child: Text(
                                              'Remaining \$0',
                                              style: TextStyle(
                                                color: black,
                                                fontSize: 24,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 10,
                                            width: width,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: gold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 16,
                                      width: 120,
                                      child: Text(
                                        '\$1200 of \$1000',
                                        style: TextStyle(
                                          color: ass,
                                          fontSize: 15,
                                          fontFamily: 'Inter',
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 13,
                                width: width,
                                child: Text(
                                  'You have exceed the limit.',
                                  style: TextStyle(
                                    color: red,
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: width,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 35,
                              width: width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 34,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        border: Border.all(
                                            color: ass.withOpacity(0.2))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 14,
                                          width: 14,
                                          decoration: BoxDecoration(
                                            color: blue,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        ),
                                        Container(
                                          height: 20,
                                          width: 80,
                                          child: FittedBox(
                                            child: Text(
                                              'Transportation',
                                              overflow: TextOverflow.clip,
                                              maxLines: 1,
                                              softWrap: false,
                                              style: fifteenBlackTextStyle,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 45,
                              width: width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Remaining \$350',
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 24,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 10,
                                    width: width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 18,
                              width: 120,
                              child: Text(
                                '\$350 of \$700',
                                style: TextStyle(
                                  color: ass,
                                  fontSize: 15,
                                  fontFamily: 'Inter',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateBudget(
                                        appTitleSwitch: appTitleSwitch,
                                      )));
                          appTitleSwitch = !appTitleSwitch;
                        },
                        child: CustomCommonButton(text: 'Create a budget')),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
