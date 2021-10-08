import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/figma_design/create_budget/create_budget_page.dart';
import 'package:ui_practice/figma_design/create_budget/may_month_budget.dart';

class DetailBudget extends StatefulWidget {
  @override
  _DetailBudgetState createState() => _DetailBudgetState();
}

class _DetailBudgetState extends State<DetailBudget> {
  bool appTitleSwitch = false;
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
          return DetailBudgetShowBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, false);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            size: 20,
            color: black,
          ),
        ),
        title: Text(
          'Detail Budget',
          style: eighteenBlackTextStyle,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                createAlertDialog(context);
              },
              icon: Icon(
                Icons.delete,
                size: 20,
                color: black,
              ))
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 16,
              ),
              Container(
                height: 320,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                                Icons.shopping_basket,
                                color: gold,
                                size: 20,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Shopping',
                              style: fifteenBlackTextStyle,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        'Remaining',
                        style: eighteenBlackTextStyle,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        '\$0',
                        style: TextStyle(
                            color: black,
                            fontSize: 36,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                        height: 10,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: gold,
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: red,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Text(
                                  '!',
                                  style: TextStyle(
                                      color: red,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'You have exceed the limit',
                              style: TextStyle(
                                color: white,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateBudget(
                                appTitleSwitch: appTitleSwitch,
                              )));
                  appTitleSwitch = true;
                },
                child: CustomCommonButton(
                  text: 'Edit',
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class DetailBudgetShowBox extends StatefulWidget {
  @override
  _DetailBudgetShowBoxState createState() => _DetailBudgetShowBoxState();
}

class _DetailBudgetShowBoxState extends State<DetailBudgetShowBox> {
  TextEditingController controller = TextEditingController();
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
                                'Remove this budget',
                                style: eighteenBlackTextStyle,
                              ),
                            ),
                          ),
                          Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                'Are sure to remove this budget',
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
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BudgetForMay()));
                                        },
                                        child: Text(
                                          "Yes",
                                          style: TextStyle(
                                              color: brandColor,
                                              fontSize: 18,
                                              fontFamily: 'Inter'),
                                        )),
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
