import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ui_practice/figma_design/expense_income_page.dart';
import 'package:ui_practice/figma_design/notification_page.dart';
import 'package:ui_practice/figma_design/transfer_page.dart';
import '../common/common_class.dart';
import '../common/constant_page.dart';

class AccountBalance extends StatefulWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 6, fontFamily: 'Inter', fontWeight: FontWeight.bold);
  final List<Widget> widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Transaction',
      style: optionStyle,
    ),
    Text(
      'Index 2: Budget',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
  ];

  @override
  _AccountBalanceState createState() => _AccountBalanceState();
}

class _AccountBalanceState extends State<AccountBalance> {
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
          return TransparentShowBoxWithThreeOptions();
        });
  }

  final TextEditingController controller = TextEditingController();

  int _selectedIndex = 0;

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
        child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.6, 4.00],
          colors: <Color>[Colors.white, Color(0xFFE6D9FF)],
        ),
      ),
      child: Scaffold(
        backgroundColor: changeBackground ? Colors.white : Colors.transparent,
        // backgroundColor: changeBackground ? Colors.white : Color(0xFFE6D9FF),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 64,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/pic for.jpg',
                      ),
                    ),
                    CustomShortTextFormField(
                        hintText: 'October', controller: controller),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotificationPage()));
                      },
                      icon: Icon(
                        Icons.doorbell_sharp,
                        color: brandColor,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Account Balance',
                style: TextStyle(
                  color: black.withOpacity(0.4),
                  fontSize: 14,
                  fontFamily: 'Inter',
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Text(
                '\$9400',
                style: TextStyle(
                    color: black,
                    fontSize: 40,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 27,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ShortIconTextContainer(
                      color: green,
                      icon: Icons.arrow_downward,
                      text1: 'Income',
                      tk: "\$5000"),
                  ShortIconTextContainer(
                      color: red,
                      icon: Icons.arrow_upward,
                      text1: 'Expenses',
                      tk: "\$12000"),
                ],
              ),
              SizedBox(
                height: 31,
              ),
              Text(
                'Spend Frequency',
                style: twentyTwoBlackInterTextStyle,
              ),
              Container(
                height: 185,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/graph.jpg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 36,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 36,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: gold.withOpacity(0.2)),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Today',
                            style: TextStyle(
                                fontSize: 18,
                                color: gold,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    CustomTextButton(text: 'Week'),
                    CustomTextButton(text: 'Month'),
                    CustomTextButton(text: 'Year'),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 56,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Recent Transaction',
                      style: twentyTwoBlackInterTextStyle,
                    ),
                    Container(
                      height: 36,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: brandColor.withOpacity(0.2)),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'See all',
                            style: TextStyle(
                                fontSize: 18,
                                color: brandColor,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Column(
                    children: [
                      CustomTransactionTile(
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
                      CustomTransactionTile(
                        icon: Icons.subscriptions,
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
                      CustomTransactionTile(
                        icon: Icons.restaurant,
                        color: red,
                        category: 'Food',
                        summery: 'Buy a ramen',
                        amount: '\-\$32',
                        time: '07:30 AM',
                        dollarColor: red,
                        date: 'Sunday 5 June 2021',
                        wallet: 'Wallet',
                        type: 'Expense',
                      ),
                      SizedBox(
                        height: 8,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class ShortIconTextContainer extends StatelessWidget {
  ShortIconTextContainer({
    Key? key,
    required this.color,
    required this.text1,
    required this.tk,
    required this.icon,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String text1;
  final String tk;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 164,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Icon(
                      icon,
                      color: color,
                    ),
                    Icon(
                      Icons.camera_alt,
                      color: color,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text1,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Inter',
                        color: white,
                      ),
                    ),
                    Text(
                      tk,
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Inter',
                        color: white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransparentShowBoxWithThreeOptions extends StatefulWidget {
  @override
  _TransparentShowBoxWithThreeOptionsState createState() =>
      _TransparentShowBoxWithThreeOptionsState();
}

class _TransparentShowBoxWithThreeOptionsState
    extends State<TransparentShowBoxWithThreeOptions> {
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
          left: 60,
          child: Container(
            height: 250,
            width: 300,
            color: Colors.transparent,
            child: Stack(
              children: [
                Positioned(
                    top: 90,
                    left: 40,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExpenseAndIncome(
                                    text1: "Income", color: green)));
                      },
                      child: Container(
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: green,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_downward,
                                color: white,
                                size: 20,
                              ),
                              Icon(
                                Icons.camera_alt,
                                color: white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                Positioned(
                    top: 90,
                    right: 40,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExpenseAndIncome(
                                    text1: "Expense", color: red)));
                      },
                      child: Container(
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: red,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_upward,
                                color: white,
                                size: 20,
                              ),
                              Icon(
                                Icons.camera_alt,
                                color: white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                Positioned(
                    top: 20,
                    left: 120,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TransferPage(
                                    text1: "Transfer", color: blue)));
                      },
                      child: Container(
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: blue,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.monetization_on,
                            color: white,
                            size: 25,
                          ),
                        ),
                      ),
                    )),
                Positioned(
                    top: 170,
                    left: 120,
                    child: Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: brandColor,
                      ),
                      child: Center(
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context, false);
                            },
                            icon: Icon(
                              Icons.clear,
                              color: white,
                              size: 25,
                            )),
                      ),
                    )),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
