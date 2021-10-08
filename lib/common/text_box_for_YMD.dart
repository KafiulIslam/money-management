import 'package:flutter/material.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/common/date_month_year_tile.dart';
import 'package:ui_practice/common/year_month_date.dart';

class YearTextBoxForYMD extends StatefulWidget {
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
          return TileShowBox(
            showBox: YearListViewShowBox(),
          );
          ;
        });
  }

  @override
  _YearTextBoxForYMDState createState() => _YearTextBoxForYMDState();
}

class _YearTextBoxForYMDState extends State<YearTextBoxForYMD> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 107,
      decoration: BoxDecoration(
          border: Border.all(color: ass.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(17)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 50,
              width: 45,
              child: Center(
                  child: Text(
                'Year',
                style: TextStyle(
                    color: black,
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold),
              ))),
          Container(
            height: 50,
            width: 35,
            child: Center(
              child: IconButton(
                onPressed: () {
                  widget.createAlertDialog(context);
                },
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
    );
  }
}

class MonthTextBoxForYMD extends StatefulWidget {
  createAlertDialog(BuildContext context) {
    return showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return TileShowBox(
            showBox: MonthListViewShowBox(),
          );
        });
  }

  @override
  _MonthTextBoxForYMDState createState() => _MonthTextBoxForYMDState();
}

class _MonthTextBoxForYMDState extends State<MonthTextBoxForYMD> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 107,
      decoration: BoxDecoration(
          border: Border.all(color: ass.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(17)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 50,
              width: 45,
              child: Center(
                child: Text(
                  "Month",
                  style: TextStyle(
                      color: black,
                      fontSize: 13,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold),
                ),
              )),
          Container(
            height: 50,
            width: 35,
            child: Center(
              child: IconButton(
                onPressed: () {
                  widget.createAlertDialog(context);
                },
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
    );
  }
}

class DateTextBoxForYMD extends StatefulWidget {
  createAlertDialog(BuildContext context) {
    return showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return TileShowBox(
            showBox: DateListViewShowBox(),
          );
        });
  }

  @override
  _DateTextBoxForYMDState createState() => _DateTextBoxForYMDState();
}

class _DateTextBoxForYMDState extends State<DateTextBoxForYMD> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 107,
      decoration: BoxDecoration(
          border: Border.all(color: ass.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(17)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 50,
              width: 45,
              child: Center(
                child: Text(
                  "Date",
                  style: TextStyle(
                      color: black,
                      fontSize: 13,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold),
                ),
              )
              // TextFormField(
              //   controller: widget.controller,
              //   decoration: InputDecoration(
              //     hintText: widget.hintText,
              //     hintStyle: TextStyle(color: black, fontSize: 8),
              //     enabledBorder: OutlineInputBorder(
              //       borderSide: BorderSide(width: 3, color: ass.withOpacity(.3)),
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderSide: BorderSide(width: 3, color: Color(0xFF7F3DFF)),
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //   ),
              // ),
              ),
          Container(
            height: 50,
            width: 35,
            child: Center(
              child: IconButton(
                onPressed: () {
                  widget.createAlertDialog(context);
                },
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
    );
  }
}

class TileShowBox extends StatefulWidget {
  TileShowBox({Key? key, required this.showBox}) : super(key: key);

  final Widget showBox;
  final TextEditingController controller = TextEditingController();

  @override
  _TileShowBoxState createState() => _TileShowBoxState();
}

class _TileShowBoxState extends State<TileShowBox> {
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
              top: MediaQuery.of(context).size.height * 0.29,
              left: MediaQuery.of(context).size.width * 0.35,
              right: MediaQuery.of(context).size.width * 0.35,
              child: Container(
                  // height: 495,
                  height: MediaQuery.of(context).size.height * 0.41,
                  // width: MediaQuery.of(context).size.width ,
                  width: MediaQuery.of(context).size.width * 0.30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color: white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Center(child: widget.showBox),
                  )))
        ]));
  }

  // dialogContentWithYearMonthDate(BuildContext context) {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 80.0, right: 80),
  //     child: Container(
  //       height: 300,
  //       width: 50,
  //       decoration: BoxDecoration(
  //           color: white, borderRadius: BorderRadius.circular(17)),
  //       child: Center(child: widget.showBox),
  //     ),
  //   );
  // }
}

// class _FrequencyEndShowBoxState extends State<FrequencyEndShowBox> {
//   TextEditingController controller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: Stack(children: [
//         Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//
//           // color: white,
//         ),
//         Positioned(
//             top: MediaQuery.of(context).size.height * 0.60,
//             child: Container(
//               // height: 495,
//               height: MediaQuery.of(context).size.height * 0.40,
//               width: MediaQuery.of(context).size.width,
//
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(24),
//                   topRight: Radius.circular(24),
//                 ),
//                 color: white,
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 16.0, right: 16.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Container(
//                       height: 2,
//                       width: 36,
//                       color: brandColor,
//                     ),
//                     SizedBox(
//                       height: 16,
//                     ),
//                     Container(
//                       color: white,
//                       height: 128,
//                       width: MediaQuery.of(context).size.width,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           FrequencyTextFormField(),
//                           SizedBox(
//                             height: 8,
//                           ),
//                           CustomTextFormField(
//                               hintText: 'End After',
//                               controller: controller,
//                               hintTextColor: ass),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     CustomCommonButton(text: 'Next'),
//                     SizedBox(
//                       height: 8,
//                     ),
//                   ],
//                 ),
//               ),
//               // height: MediaQuery.of(context).size.height,
//
//               // color: Colors.white,
//             ))
//       ]),
//     );
//   }
// }
