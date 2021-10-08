import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/common/date_month_year_tile.dart';
import 'package:ui_practice/common/text_box_for_YMD.dart';
import 'package:ui_practice/figma_design/frequency_and_end_after.dart';

class YearMonthDateShowBox extends StatefulWidget {
  final TextEditingController controller = TextEditingController();
  @override
  _YearMonthDateShowBoxState createState() => _YearMonthDateShowBoxState();
}

class _YearMonthDateShowBoxState extends State<YearMonthDateShowBox> {
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
        child: dialogContentWithYearMonthDate(context),
      ),
    );
  }

  dialogContentWithYearMonthDate(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          top: 288,
          right: 2,
          left: 2,
          child: Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
            margin: EdgeInsets.only(top: 16.0),
            decoration: BoxDecoration(
                color: white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(17),
                    topRight: Radius.circular(17)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0),
                  ),
                ]),
            child: Column(
              children: [
                Container(
                  height: 2,
                  width: 36,
                  color: brandColor,
                ),
                SizedBox(
                  height: 20,
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
                                  border:
                                      Border.all(color: ass.withOpacity(0.15)),
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
