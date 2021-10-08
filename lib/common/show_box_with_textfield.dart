import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/common/frequency_text_form_page.dart';

class ShowBoxWithTextFormField extends StatelessWidget {
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
          top: 288,
          right: 2,
          left: 2,
          child: Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
            margin: EdgeInsets.only(top: 16.0),
            decoration: BoxDecoration(
                // gradient: LinearGradient(
                //     begin: Alignment.topCenter,
                //     end: Alignment.bottomCenter,
                //     colors: [
                //       Colors.white,
                //       brandColor,
                //     ],
                //     stops: [
                //       .09,
                //       1.0
                //     ]),
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
