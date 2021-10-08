import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/figma_design/account_balance.dart';
import 'package:ui_practice/figma_design/month/monthly_income_expenses_page.dart';

class DetailTransaction extends StatefulWidget {
  DetailTransaction({
    Key? key,
    required this.color,
    required this.amount,
    required this.summery,
    required this.date,
    required this.time,
    required this.type,
    required this.category,
    required this.wallet,
  }) : super(key: key);
  final Color color;
  final String amount;
  final String summery;
  final String date;
  final String time;
  final String type;
  final String category;
  final String wallet;

  @override
  _DetailTransactionState createState() => _DetailTransactionState();
}

class _DetailTransactionState extends State<DetailTransaction> {
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
          return RemoveShowBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, false);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            size: 25,
            color: white,
          ),
        ),
        title: Text(
          'Detail Transaction',
          style: TextStyle(
              color: white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter'),
        ),
        actions: [
          IconButton(
              onPressed: () {
                createAlertDialog(context);
              },
              icon: Icon(
                Icons.delete,
                size: 30,
                color: white,
              ))
        ],
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      color: widget.color),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 100,
                        width: width,
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: width,
                              child: Center(
                                child: Text(
                                  '${widget.amount}',
                                  style: TextStyle(
                                      color: white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Inter'),
                                ),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: width,
                              child: Center(
                                child: Text(
                                  widget.summery,
                                  style: TextStyle(
                                      color: white.withOpacity(0.8),
                                      fontSize: 18,
                                      fontFamily: 'Inter'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 16,
                        width: width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 35,
                              width: 135,
                              child: Text(
                                widget.date,
                                style: TextStyle(
                                  color: white.withOpacity(0.8),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              height: 35,
                              width: 40,
                              child: Text(
                                widget.time,
                                style: TextStyle(
                                  color: white.withOpacity(0.8),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Column(
                      children: [
                        Row(
                          children: List.generate(
                              150 ~/ 3,
                              (index) => Expanded(
                                    child: Container(
                                      // margin: EdgeInsets.only(left: 16, right: 16),
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : ass.withOpacity(0.35),
                                      height: 1.5,
                                    ),
                                  )),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 20,
                          width: width,
                          child: Text(
                            'Description',
                            style: TextStyle(
                                color: ass,
                                fontSize: 15,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 76,
                          width: width,
                          child: Text(
                            'Delight your users with Flutter\'s built-in beautiful Material Design & Cupertino widgets.Quickly ship features with a focus on native end-user experiences.Install Flutter today. Hot Reload. Mobile Ads SDK. Open Source.Native Performance. Flexible UI. Null Safe Code.',
                            style: TextStyle(
                              color: black,
                              fontSize: 15,
                              fontFamily: 'Inter',
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 20,
                          width: width,
                          child: Text(
                            'Attachment',
                            style: TextStyle(
                                color: ass,
                                fontSize: 15,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 110,
                          width: width,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    white,
                                    waterAss,
                                  ],
                                  stops: [
                                    0.7,
                                    2.0
                                  ]),
                              borderRadius: BorderRadius.circular(17),
                              color: waterAss,
                              image: DecorationImage(
                                  image: AssetImage('images/cashmemo.png'),
                                  fit: BoxFit.contain)),
                        ),
                        SizedBox(
                          height: height * 0.025,
                        ),
                        CustomCommonButton(text: 'Edit'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: height * 0.22,
              right: 1,
              left: 1,
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Container(
                  height: 76,
                  width: width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            white,
                            waterAss,
                          ],
                          stops: [
                            0.7,
                            2.0
                          ]),
                      borderRadius: BorderRadius.circular(12),
                      color: waterAss),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 46,
                        width: 67,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Type',
                              style: TextStyle(
                                  color: ass,
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700),
                            ),
                            Container(
                              height: 16,
                              width: 67,
                              child: FittedBox(
                                child: Text(
                                  widget.type,
                                  style: fifteenBlackTextStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 46,
                        width: 67,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Category',
                              style: TextStyle(
                                  color: ass,
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700),
                            ),
                            Container(
                              height: 16,
                              width: 67,
                              child: FittedBox(
                                child: Text(
                                  widget.category,
                                  style: fifteenBlackTextStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 46,
                        width: 67,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Wallet',
                              style: TextStyle(
                                  color: ass,
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700),
                            ),
                            Container(
                              height: 16,
                              width: 67,
                              child: FittedBox(
                                child: Text(
                                  widget.wallet,
                                  style: fifteenBlackTextStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}

class RemoveShowBox extends StatefulWidget {
  @override
  _RemoveShowBoxState createState() => _RemoveShowBoxState();
}

class _RemoveShowBoxState extends State<RemoveShowBox> {
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
          top: MediaQuery.of(context).size.height * 0.70,
          child: Container(
            height: 220,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24),
                topLeft: Radius.circular(24),
              ),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 3,
                  width: 36,
                  color: brandColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, right: 16.0),
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              'Remove this transaction ?',
                              style: eighteenBlackTextStyle,
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              'Are you sure to remove this transaction ?',
                              maxLines: 2,
                              style: TextStyle(
                                  color: ass,
                                  fontSize: 15,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: 56,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 55,
                                width: 160,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: brandColor),
                                child: Center(
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MonthlyIncomeExpensePage()));
                                      },
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                            color: white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Inter'),
                                      )),
                                ),
                              ),
                              Container(
                                height: 55,
                                width: 160,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: brandColor.withOpacity(0.2)),
                                child: Center(
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.pop(context, false);
                                      },
                                      child: Text(
                                        'No',
                                        style: TextStyle(
                                            color: brandColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Inter'),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
