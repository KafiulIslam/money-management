import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/common/text_box_for_YMD.dart';
import 'package:ui_practice/common/year_month_date.dart';
import 'package:ui_practice/figma_design/frequency_and_end_after.dart';

class FrequencyTextFormField extends StatefulWidget {
  @override
  _FrequencyTextFormFieldState createState() => _FrequencyTextFormFieldState();
}

class _FrequencyTextFormFieldState extends State<FrequencyTextFormField> {
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
          return YearMonthDateShowBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: "Frequency",
        hintStyle: TextStyle(color: ass),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: ass.withOpacity(.3)),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Color(0xFF7F3DFF)),
          borderRadius: BorderRadius.circular(15),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            createAlertDialog(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: black.withOpacity(.30),
          ),
        ),
      ),
    );
  }
}

class YearMonthDateShowBox extends StatefulWidget {
  @override
  _YearMonthDateShowBoxState createState() => _YearMonthDateShowBoxState();
}

class _YearMonthDateShowBoxState extends State<YearMonthDateShowBox> {
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
                          Container(
                            height: 56,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                YearTextBoxForYMD(),
                                MonthTextBoxForYMD(),
                                DateTextBoxForYMD(),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 56,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DateTextBoxForYMD(),
                                Container(
                                  height: 55,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ass.withOpacity(0.15)),
                                      borderRadius: BorderRadius.circular(17)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: 50,
                                          width: 100,
                                          child: Center(
                                            child: Text(
                                              '00-00-00',
                                              style: fifteenBlackTextStyle,
                                            ),
                                          )),
                                      Container(
                                        height: 50,
                                        width: 50,
                                        child: Center(
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.keyboard_arrow_down,
                                              color: black.withOpacity(.30),
                                              size: 25,
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
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FrequencyAndEndAfter(
                                        text1: 'Expense',
                                        color: red,
                                      )));
                        },
                        child: CustomCommonButton(text: 'Next')),
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
