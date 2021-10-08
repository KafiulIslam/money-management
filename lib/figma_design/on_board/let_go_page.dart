import 'package:flutter/material.dart';
import 'add_new_account.dart';
import '../../common/common_class.dart';
import '../../common/constant_page.dart';

class LetGoPage extends StatefulWidget {
  @override
  _LetGoPageState createState() => _LetGoPageState();
}

class _LetGoPageState extends State<LetGoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 67,
                ),
                Text(
                  'Let\'s set up your\naccount',
                  style: thirtySixBlackTextStyle,
                ),
                SizedBox(
                  height: 37,
                ),
                Text(
                  'Account can be your bank,\ncredit card or wallet',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: 'SF Pro Text Light',
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 434,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddNewAccount()));
                  },
                  child: CustomCommonButton(
                    text: 'Let\'s Go',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
