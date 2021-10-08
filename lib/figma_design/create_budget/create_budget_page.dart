import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';

class CreateBudget extends StatefulWidget {
  CreateBudget({Key? key, required this.appTitleSwitch}) : super(key: key);

  final bool appTitleSwitch;

  @override
  _CreateBudgetState createState() => _CreateBudgetState();
}

class _CreateBudgetState extends State<CreateBudget> {
  bool receiveAlertSwitch = true;

  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: brandColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, false);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            size: 22,
            color: white,
          ),
        ),
        title: Text(
          widget.appTitleSwitch ? 'Edit Budget' : 'Create Budget',
          style: TextStyle(
              color: white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter'),
        ),
        centerTitle: true,
      ),
      backgroundColor: brandColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: receiveAlertSwitch ? height * .35 : height * .25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  height: 22,
                  width: width,
                  child: Text(
                    'How much do want to spend ?',
                    style: TextStyle(
                        fontSize: 18,
                        color: white.withOpacity(0.60),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  height: 77,
                  width: 90,
                  child: Text(
                    '\$0',
                    style: TextStyle(
                        fontSize: 64,
                        color: white,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                height: receiveAlertSwitch ? height * .401 : height * .501,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)),
                  color: white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 155,
                        width: width,
                        child: Column(
                          children: [
                            Container(
                              height: 56,
                              width: width,
                              child: CustomTextFormField(
                                hintText: receiveAlertSwitch
                                    ? 'Category'
                                    : 'Shopping',
                                hintTextColor: receiveAlertSwitch
                                    ? ass.withOpacity(0.7)
                                    : black,
                                controller: controller,
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Container(
                              height: 75,
                              width: width,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 200,
                                          child: Text(
                                            'Receive Alert',
                                            style: fifteenBlackTextStyle,
                                          ),
                                        ),
                                        Container(
                                          height: 45,
                                          width: 200,
                                          child: Text(
                                            'Receive alert when\nit reaches some point.',
                                            style: TextStyle(
                                                color: ass,
                                                fontSize: 12,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700),
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
                                              color: receiveAlertSwitch
                                                  ? brandColor.withOpacity(0.4)
                                                  : brandColor,
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                        ),
                                        Positioned(
                                          top: 2,
                                          right: receiveAlertSwitch ? 20 : 2,
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                receiveAlertSwitch =
                                                    !receiveAlertSwitch;

                                                var index = 0;
                                                if (!receiveAlertSwitch) {
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
                                                      BorderRadius.circular(
                                                          16)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      receiveAlertSwitch
                          ? Container(
                              height: 1,
                              width: width,
                            )
                          : Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height: 35,
                                  width: width,
                                ),
                                Container(
                                  height: 12,
                                  width: width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: waterAss,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 150.0),
                                  child: Container(
                                    height: 12,
                                    width: width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: brandColor,
                                    ),
                                  ),
                                ),
                                Positioned(
                                    left: 200,
                                    child: Container(
                                      height: 30,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: brandColor,
                                          border: Border.all(
                                              color: white, width: 3)),
                                      child: Center(
                                        child: Text(
                                          '80%',
                                          style: TextStyle(
                                              color: white,
                                              fontSize: 12,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                      SizedBox(
                        height: 8,
                      ),
                      CustomCommonButton(text: 'Create a budget'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
