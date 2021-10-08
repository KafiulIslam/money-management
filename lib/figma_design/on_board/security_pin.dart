import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/figma_design/account_balance.dart';
import 'package:ui_practice/figma_design/expense_income_page.dart';
import '../../common/constant_page.dart';

class SecurityPin extends StatefulWidget {
  @override
  _SecurityPinState createState() => _SecurityPinState();
}

class _SecurityPinState extends State<SecurityPin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: brandColor,
        ),
        child: OtpScreen(),
      ),
    ));
  }
}

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var pinIndex = 0;

  List<String> currentPin = [
    "",
    "",
    "",
    "",
  ];

  TextEditingController pinOneController = TextEditingController();
  TextEditingController pinTwoController = TextEditingController();
  TextEditingController pinThreeController = TextEditingController();
  TextEditingController pinFourController = TextEditingController();

  var outLineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.transparent));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        buildExitButton(),
        Expanded(
          child: Container(
            alignment: Alignment(0, 0.5),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.00),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  buildSecurityText(),
                  SizedBox(
                    height: 40,
                  ),
                  buildPinRow(),
                ],
              ),
            ),
          ),
        ),
        buildNumberPad(),
      ],
    ));
  }

  buildNumberPad() {
    return Expanded(
        child: Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      KeyBoardNumber(
                          n: 1,
                          onPressed: () {
                            pinIndexSetup("1");
                          }),
                      KeyBoardNumber(
                          n: 2,
                          onPressed: () {
                            pinIndexSetup("2");
                          }),
                      KeyBoardNumber(
                          n: 3,
                          onPressed: () {
                            pinIndexSetup("3");
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      KeyBoardNumber(
                          n: 4,
                          onPressed: () {
                            pinIndexSetup("4");
                          }),
                      KeyBoardNumber(
                          n: 5,
                          onPressed: () {
                            pinIndexSetup("5");
                          }),
                      KeyBoardNumber(
                          n: 6,
                          onPressed: () {
                            pinIndexSetup("6");
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      KeyBoardNumber(
                          n: 7,
                          onPressed: () {
                            pinIndexSetup("7");
                          }),
                      KeyBoardNumber(
                          n: 8,
                          onPressed: () {
                            pinIndexSetup("8");
                          }),
                      KeyBoardNumber(
                          n: 9,
                          onPressed: () {
                            pinIndexSetup("9");
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 60,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AccountBalance()));
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60.0)),
                          child: Icon(
                            Icons.arrow_back,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      KeyBoardNumber(
                          n: 0,
                          onPressed: () {
                            pinIndexSetup("0");
                          }),
                      Container(
                        width: 60,
                        child: MaterialButton(
                          onPressed: () {
                            clearPin();
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60.0)),
                          child: Icon(
                            Icons.clear,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )));
  }

  clearPin() {
    if (pinIndex == 0) {
      pinIndex = 0;
    } else if (pinIndex == 4) {
      setPin(pinIndex, "");
      currentPin[pinIndex - 1] = "";
      pinIndex--;
    } else {
      setPin(pinIndex, "");
      currentPin[pinIndex - 1] = "";
      pinIndex--;
    }
  }

  pinIndexSetup(String text) {
    if (pinIndex == 0) {
      pinIndex = 1;
    } else if (pinIndex < 4) {
      pinIndex++;
    }
    setPin(pinIndex, text);
    currentPin[pinIndex - 1] = text;
    String strPin = "";
    currentPin.forEach((e) {
      strPin += e;
    });
    if (pinIndex == 4) {
      print(strPin);
    }
  }

  setPin(int n, String text) {
    switch (n) {
      case 1:
        pinOneController.text = text;
        break;

      case 2:
        pinTwoController.text = text;
        break;

      case 3:
        pinThreeController.text = text;
        break;

      case 4:
        pinFourController.text = text;
        break;
    }
  }

  buildPinRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PINNumber(
          outlineInputBorder: outLineInputBorder,
          textEditingController: pinOneController,
        ),
        PINNumber(
          outlineInputBorder: outLineInputBorder,
          textEditingController: pinTwoController,
        ),
        PINNumber(
          outlineInputBorder: outLineInputBorder,
          textEditingController: pinThreeController,
        ),
        PINNumber(
          outlineInputBorder: outLineInputBorder,
          textEditingController: pinFourController,
        ),
      ],
    );
  }

  buildSecurityText() {
    return Text(
      "Security PIN",
      style: TextStyle(
          color: Colors.white70,
          fontWeight: FontWeight.bold,
          fontSize: 21,
          fontFamily: 'Inter'),
    );
  }

  buildExitButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.all(8.00),
          child: MaterialButton(
            onPressed: () {},
            height: 50,
            minWidth: 50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Icons.clear,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

class PINNumber extends StatelessWidget {
  final TextEditingController textEditingController;
  final OutlineInputBorder outlineInputBorder;

  const PINNumber(
      {Key? key,
      required this.textEditingController,
      required this.outlineInputBorder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: TextField(
        controller: textEditingController,
        enabled: false,
        obscureText: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white30,
            contentPadding: EdgeInsets.all(16.0),
            border: outlineInputBorder),
        style: TextStyle(
            fontSize: 21, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}

class KeyBoardNumber extends StatelessWidget {
  const KeyBoardNumber({Key? key, required this.n, required this.onPressed})
      : super(key: key);

  final int n;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Colors.purpleAccent.withOpacity(0.1)),
      child: MaterialButton(
        padding: EdgeInsets.all(8.0),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
        height: 90,
        child: Text(
          '$n',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24 * MediaQuery.of(context).textScaleFactor,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
