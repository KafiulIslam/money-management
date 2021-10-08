import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';

import 'package:ui_practice/figma_design/month/monthly_income_expenses_page.dart';

class FrequencyAndEndAfter extends StatefulWidget {
  FrequencyAndEndAfter({
    Key? key,
    required this.text1,
    required this.color,
  }) : super(key: key);

  final String text1;
  final Color color;

  @override
  _FrequencyAndEndAfterState createState() => _FrequencyAndEndAfterState();
}

class _FrequencyAndEndAfterState extends State<FrequencyAndEndAfter> {
  final TextEditingController controller = TextEditingController();

  bool buttonSwitch = true;

  createAlertDialog(BuildContext context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return TransactionCompleteShowBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: widget.color,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 64,
              width: MediaQuery.of(context).size.width,
              color: widget.color,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Center(
                      child: Text(
                        widget.text1,
                        style: TextStyle(
                            color: white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inter'),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                height: 190,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 59,
                    ),
                    Text(
                      "How much ?",
                      style: TextStyle(
                          fontSize: 18,
                          color: white.withOpacity(0.50),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      "\$80",
                      style: TextStyle(
                          fontSize: 64,
                          color: white,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 550,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 24.0, bottom: 24.0, left: 16.0, right: 16.0),
                    child: Container(
                      height: 440,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            controller: controller,
                            decoration: InputDecoration(
                              hintText: 'Subscription',
                              hintStyle: TextStyle(color: black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3, color: ass.withOpacity(.3)),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3, color: Color(0xFF7F3DFF)),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  height: 2,
                                  width: 2,
                                  decoration: BoxDecoration(
                                    color: green,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: black.withOpacity(.30),
                                ),
                              ),
                            ),
                          ),
                          CustomTextFormField(
                            hintTextColor: Colors.black,
                            hintText: 'Disney + annual subscription',
                            controller: controller,
                          ),
                          CustomTextFormField(
                            hintTextColor: Colors.black,
                            hintText: 'Paypal',
                            controller: controller,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 102,
                            width: 110,
                            child: Stack(
                              children: [
                                Container(
                                  height: 90,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: red,
                                      borderRadius: BorderRadius.circular(17),
                                      image: DecorationImage(
                                          image:
                                              AssetImage('images/pic for.jpg'),
                                          fit: BoxFit.cover)),
                                ),
                                Positioned(
                                  bottom: 82,
                                  left: 82,
                                  child: Container(
                                    height: 20,
                                    width: 22,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.black.withOpacity(0.3)),
                                    child: Icon(
                                      Icons.clear,
                                      color: white,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16.0, right: 16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Repeat',
                                        style: eighteenBlackTextStyle,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      buttonSwitch
                                          ? Text(
                                              'Repeat transaction',
                                              style: TextStyle(
                                                color: ass,
                                                fontSize: 15,
                                              ),
                                            )
                                          : Text(
                                              'Repeat transaction, set your own time',
                                              style: TextStyle(
                                                color: ass,
                                                fontSize: 15,
                                              ),
                                            ),
                                    ],
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
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                      ),
                                      Positioned(
                                        top: 2,
                                        right: buttonSwitch ? 20 : 2,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              buttonSwitch = false;
                                            });
                                          },
                                          child: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                color: white,
                                                borderRadius:
                                                    BorderRadius.circular(16)),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 155,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Frequency',
                                        style: fifteenBlackTextStyle,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Yearly - December 29',
                                        style: TextStyle(
                                            color: ass,
                                            fontSize: 12,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 55,
                                  width: 155,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'End After',
                                        style: fifteenBlackTextStyle,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '29 - December 2025',
                                        style: TextStyle(
                                            color: ass,
                                            fontSize: 12,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Center(
                                      child: Container(
                                        height: 32,
                                        width: 58,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(17),
                                            color: brandColor.withOpacity(0.2)),
                                        child: Center(
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'Edit',
                                              style: TextStyle(
                                                  color: brandColor,
                                                  fontSize: 15,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      createAlertDialog(context);
                    },
                    child: Container(
                      height: 56,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: CustomCommonButton(
                          text: 'Continue',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class TransactionCompleteShowBox extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: dialogContentWithIconText(context),
      ),
    );
  }

  dialogContentWithIconText(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          top: 200,
          right: 2,
          left: 2,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context, false);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MonthlyIncomeExpensePage()));
            },
            child: Container(
              height: 128,
              width: MediaQuery.of(context).size.width,
              padding:
                  EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
              margin: EdgeInsets.only(top: 16.0),
              decoration: BoxDecoration(
                  color: white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(17.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0,
                      offset: Offset(0.0, 10.0),
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFF5233FF),
                    ),
                    child: Center(
                        child: Icon(
                      Icons.done,
                      color: Colors.white,
                      size: 25,
                    )),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: Container(
                      height: 18,
                      width: 280,
                      child: Center(
                        child: Text(
                          'Transaction has been added successfully',
                          style: fifteenBlackTextStyle,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
