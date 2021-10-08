import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/common/example_from_google.dart';
import 'package:ui_practice/figma_design/account_balance.dart';
import 'package:ui_practice/figma_design/create_budget/may_month_budget.dart';
import 'package:ui_practice/figma_design/on_board/montra1.dart';
import 'package:ui_practice/figma_design/profile/profile_page.dart';
import 'package:ui_practice/financial_report_page/financial_report.dart';

class MonthlyIncomeExpensePage extends StatefulWidget {
  @override
  _MonthlyIncomeExpensePageState createState() =>
      _MonthlyIncomeExpensePageState();
}

class _MonthlyIncomeExpensePageState extends State<MonthlyIncomeExpensePage> {
  createAlertDialog(BuildContext context) {
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
          return ShowBoxMonthlyIncomeExpense(
            notificationNumber: notificationNumber,
          );
        });
  }

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

  int _selectedIndex = 0;
  int notificationNumber = 0;

  bool changeBackground = true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      changeBackground = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                children: [
                  Container(
                    height: 64,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: white,
                          width: 100,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 25,
                                  color: brandColor,
                                ),
                              ),
                              Text(
                                'Month',
                                style: fifteenBlackTextStyle,
                              )
                            ],
                          ),
                        ),
                        notificationNumber > 0
                            ? Stack(
                                children: [
                                  Container(
                                    color: white,
                                    width: 40,
                                    height: 40,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: 2,
                                            width: 24,
                                            color: black,
                                          ),
                                          Container(
                                            height: 2.5,
                                            width: 16,
                                            color: black,
                                          ),
                                          Container(
                                            height: 3,
                                            width: 8,
                                            color: black,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: 2,
                                      left: 15,
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          color: brandColor,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '$notificationNumber',
                                            style: TextStyle(
                                              color: white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ))
                                ],
                              )
                            : Container(
                                color: white,
                                width: 40,
                                height: 40,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 2,
                                        width: 24,
                                        color: black,
                                      ),
                                      Container(
                                        height: 2.5,
                                        width: 16,
                                        color: black,
                                      ),
                                      Container(
                                        height: 3,
                                        width: 8,
                                        color: black,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  Container(
                    height: 64,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: FractionalOffset.centerLeft,
                              end: FractionalOffset.centerRight,
                              colors: [
                                brandColor.withOpacity(0.3),
                                brandColor.withOpacity(
                                  0.1,
                                ),
                              ])),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 20,
                              width: 185,
                              child: Text(
                                'See your financial report',
                                style: TextStyle(
                                    color: brandColor,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Center(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.chevron_right,
                                    size: 40,
                                    color: brandColor,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        'Today',
                        style: eighteenBlackTextStyle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: CustomTransactionTile(
                      icon: Icons.shop,
                      color: gold,
                      category: 'Shopping',
                      summery: 'Buy some grocery',
                      amount: '\-\$120',
                      time: '10:00 AM',
                      dollarColor: red,
                      date: 'Saturday 4 June 2021',
                      wallet: 'Wallet',
                      type: 'Expense',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: CustomTransactionTile(
                      icon: Icons.file_copy,
                      color: brandColor,
                      category: 'Subscription',
                      summery: 'Disney + Annual',
                      amount: '\-\$80',
                      time: '03:30 AM',
                      dollarColor: red,
                      date: 'Saturday 4 June 2021',
                      wallet: 'Wallet',
                      type: 'Expense',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: CustomTransactionTile(
                      icon: Icons.restaurant,
                      color: red,
                      category: 'Food',
                      summery: 'Buy ramen',
                      amount: '\-\$32',
                      time: '07:30 AM',
                      dollarColor: red,
                      date: 'Sunday 5 June 2021',
                      wallet: 'Wallet',
                      type: 'Expense',
                    ),
                  ),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        'Yesterday',
                        style: eighteenBlackTextStyle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: CustomTransactionTile(
                      icon: Icons.monetization_on,
                      color: green,
                      category: 'Salary',
                      summery: 'Salary for July',
                      amount: '\+\$5000',
                      time: '04:30 AM',
                      dollarColor: green,
                      date: 'Wednesday 1 June 2021',
                      wallet: 'Cheque',
                      type: 'Income',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: CustomTransactionTile(
                      icon: Icons.emoji_transportation,
                      color: Color(0xFF0077FF),
                      category: 'Transportation',
                      summery: 'Charging Tesla',
                      amount: '\-\$18',
                      time: '08:30 AM',
                      dollarColor: red,
                      date: 'Sunday 5 June 2021',
                      wallet: 'Wallet',
                      type: 'Expense',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          unselectedItemColor: ass,
          unselectedLabelStyle: TextStyle(color: ass, fontSize: 10),
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Montra()));
                },
                icon: Icon(Icons.home, size: 23),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MonthlyIncomeExpensePage()));
                },
                icon: Icon(Icons.monetization_on, size: 23),
              ),
              label: 'Transaction',
            ),
            BottomNavigationBarItem(
                icon: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: brandColor,
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: () {
                          _createAlertDialog(context);
                        },
                        icon: Icon(
                          Icons.add,
                          color: white,
                        ))),
                label: 'Add'),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BudgetForMay()));
                },
                icon: Icon(
                  CustomPieChart.pie_chart__1_,
                  size: 23,
                ),
              ),
              label: 'Budget',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                icon: Icon(
                  Icons.person,
                  size: 23,
                ),
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: brandColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class ShowBoxMonthlyIncomeExpense extends StatefulWidget {
  ShowBoxMonthlyIncomeExpense({required this.notificationNumber});
  int notificationNumber;

  @override
  _ShowBoxMonthlyIncomeExpenseState createState() =>
      _ShowBoxMonthlyIncomeExpenseState();
}

class _ShowBoxMonthlyIncomeExpenseState
    extends State<ShowBoxMonthlyIncomeExpense> {
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
            top: MediaQuery.of(context).size.height * 0.20,
            child: Container(
              // height: 495,
              height: MediaQuery.of(context).size.height * 0.80,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 3,
                      width: 36,
                      color: brandColor,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 32,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 19,
                            width: 200,
                            color: Colors.white,
                            child: Text(
                              'Filter Transaction',
                              style: eighteenBlackTextStyle,
                            ),
                          ),
                          Container(
                            height: 32,
                            width: 70,
                            decoration: BoxDecoration(
                              color: brandColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pop(context, false);
                              },
                              child: Text(
                                'Reset',
                                style: TextStyle(color: brandColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'Filter By',
                        style: eighteenBlackTextStyle,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 42,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 45,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: ass.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pop(context, false);
                              },
                              child: Text(
                                'Income',
                                style: fifteenBlackTextStyle,
                              ),
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: brandColor.withOpacity(0.2),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pop(context, false);
                              },
                              child: Text(
                                'Expense',
                                style: TextStyle(
                                    color: brandColor,
                                    fontSize: 15,
                                    fontFamily: 'Inter'),
                              ),
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: ass.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pop(context, false);
                              },
                              child: Text(
                                'Transfer',
                                style: fifteenBlackTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'Sort By',
                        style: eighteenBlackTextStyle,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 45,
                                width: 100,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: ass.withOpacity(0.2)),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pop(context, false);
                                  },
                                  child: Text(
                                    'Highest',
                                    style: fifteenBlackTextStyle,
                                  ),
                                ),
                              ),
                              Container(
                                height: 45,
                                width: 100,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: ass.withOpacity(0.2)),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pop(context, false);
                                  },
                                  child: Text(
                                    'Lowest',
                                    style: fifteenBlackTextStyle,
                                  ),
                                ),
                              ),
                              Container(
                                height: 45,
                                width: 100,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: ass.withOpacity(0.2)),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pop(context, false);
                                  },
                                  child: Text(
                                    'Newest',
                                    style: fifteenBlackTextStyle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 45,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: ass.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pop(context, false);
                              },
                              child: Text(
                                'Oldest',
                                style: fifteenBlackTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'Category',
                        style: eighteenBlackTextStyle,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 24,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Text(
                              'Choose Category',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: black,
                                  fontFamily: 'Inter'),
                            ),
                          ),
                          Container(
                            height: 24,
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 24,
                                  width: 75,
                                  child: Center(
                                    child: Text(
                                      '0 Selected',
                                      style: TextStyle(
                                          color: ass,
                                          fontSize: 12,
                                          fontFamily: 'Inter'),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 24,
                                  width: 24,
                                  child: Icon(
                                    Icons.keyboard_arrow_right,
                                    color: brandColor,
                                    size: 25,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),

                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SliderGoogleExample()));

                          widget.notificationNumber++;
                        });
                      },
                      child: CustomCommonButton(
                        text: 'Apply',
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    // TextButton(
                    //   onPressed: () {
                    //     Navigator.pop(context, false);
                    //   },
                    //   child: Text(
                    //     'Cancel',
                    //     style: TextStyle(color: black),
                    //   ),
                    // ),
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
