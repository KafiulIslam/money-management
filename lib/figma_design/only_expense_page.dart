import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/common/frequency_text_form_page.dart';

class OnlyExpensePage extends StatefulWidget {
  OnlyExpensePage({
    Key? key,
    required this.text1,
    required this.color,
  }) : super(key: key);

  final String text1;
  final Color color;

  @override
  _OnlyExpensePageState createState() => _OnlyExpensePageState();
}

class _OnlyExpensePageState extends State<OnlyExpensePage> {
  final TextEditingController controller = TextEditingController();

  bool buttonSwitch = true;

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
          return FrequencyEndShowBox();
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
              height: 540,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 24.0, bottom: 24.0, left: 16.0, right: 16.0),
                    child: Container(
                      height: 395,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
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
                          SizedBox(
                            height: 16,
                          ),
                          CustomTextFormField(
                            hintTextColor: Colors.black,
                            hintText: 'Disney + annual subscription',
                            controller: controller,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          CustomTextFormField(
                            hintTextColor: Colors.black,
                            hintText: 'Paypal',
                            controller: controller,
                          ),
                          SizedBox(
                            height: 22,
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
                            height: 58,
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
                                              buttonSwitch = !buttonSwitch;

                                              var index = 0;
                                              if (!buttonSwitch) {
                                                index = 1;
                                              }
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
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      createAlertDialog(context);
                    },
                    child: Container(
                      height: 88,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
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

class FrequencyEndShowBox extends StatefulWidget {
  @override
  _FrequencyEndShowBoxState createState() => _FrequencyEndShowBoxState();
}

class _FrequencyEndShowBoxState extends State<FrequencyEndShowBox> {
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
            top: MediaQuery.of(context).size.height * 0.60,
            child: Container(
              // height: 495,
              height: MediaQuery.of(context).size.height * 0.40,
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
                      height: 2,
                      width: 36,
                      color: brandColor,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      color: white,
                      height: 128,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FrequencyTextFormField(),
                          SizedBox(
                            height: 8,
                          ),
                          CustomTextFormField(
                              hintText: 'End After',
                              controller: controller,
                              hintTextColor: ass),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CustomCommonButton(text: 'Next'),
                    SizedBox(
                      height: 8,
                    ),
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
