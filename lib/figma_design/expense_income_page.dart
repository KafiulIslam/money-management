import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';

import 'package:ui_practice/figma_design/only_expense_page.dart';

class ExpenseAndIncome extends StatelessWidget {
  ExpenseAndIncome({
    Key? key,
    required this.text1,
    required this.color,
  }) : super(key: key);

  final String text1;
  final Color color;
  final TextEditingController controller = TextEditingController();

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
          return AddAttachmentShowBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 64,
              width: MediaQuery.of(context).size.width,
              color: color,
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
                        text1,
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
                      "\$0",
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
                        children: [
                          CustomTextFormField(
                            hintTextColor: ass,
                            hintText: 'Category',
                            controller: controller,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          CustomTextFormField(
                            hintTextColor: ass,
                            hintText: 'Description',
                            controller: controller,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          CustomTextFormField(
                            hintText: 'Wallet',
                            controller: controller,
                            hintTextColor: ass,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          GestureDetector(
                            onTap: () {
                              createAlertDialog(context);
                            },
                            child: Container(
                              height: 56,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.attach_file,
                                    color: ass,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Add attachment',
                                    style: eighteenAssInterTextStyle,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
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
                                      Text(
                                        'Repeat transaction',
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
                                            color: brandColor.withOpacity(0.4),
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                      ),
                                      Positioned(
                                        top: 2,
                                        right: 20,
                                        child: Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              color: white,
                                              borderRadius:
                                                  BorderRadius.circular(16)),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OnlyExpensePage(
                                    text1: 'Expense',
                                    color: red,
                                  )));
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

class AddAttachmentShowBox extends StatefulWidget {
  @override
  _AddAttachmentShowBoxState createState() => _AddAttachmentShowBoxState();
}

class _AddAttachmentShowBoxState extends State<AddAttachmentShowBox> {
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
            top: MediaQuery.of(context).size.height * 0.73,
            child: Container(
              // height: 495,
              height: MediaQuery.of(context).size.height * 0.27,
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
                      height: 16,
                    ),
                    Container(
                      height: 2,
                      width: 36,
                      color: brandColor,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      color: white,
                      height: 91,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 91,
                            width: 107,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: brandColor.withOpacity(0.25)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 32,
                                  width: 32,
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: brandColor,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'Camera',
                                  style: TextStyle(
                                      color: brandColor,
                                      fontSize: 15,
                                      fontFamily: 'Inter'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 91,
                            width: 107,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: brandColor.withOpacity(0.25)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 32,
                                  width: 32,
                                  child: Icon(
                                    Icons.image,
                                    color: brandColor,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'Image',
                                  style: TextStyle(
                                      color: brandColor,
                                      fontSize: 15,
                                      fontFamily: 'Inter'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 91,
                            width: 107,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: brandColor.withOpacity(0.25)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 32,
                                  width: 32,
                                  child: Icon(
                                    Icons.file_copy,
                                    color: brandColor,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'Document',
                                  style: TextStyle(
                                      color: brandColor,
                                      fontSize: 15,
                                      fontFamily: 'Inter'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context, false);
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                              color: brandColor,
                              fontSize: 15,
                              fontFamily: 'Inter'),
                        ))
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
