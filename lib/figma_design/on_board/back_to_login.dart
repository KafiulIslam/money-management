import 'package:flutter/material.dart';
import 'login_page.dart';
import 'reset_password.dart';
import '../../common/common_class.dart';
import '../../common/constant_page.dart';

class BackToLogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width * 0.50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/message.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Your email is on the way',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 18,
                  color: black,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10),
            Text(
              "Check your email .....@gmail and \nfollow the instruction to reset your \npassword",
              style: twelveBlackTextStyle,
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 60),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResetPassword()));
              },
              child: CustomCommonButton(
                text: 'Back to Login',
              ),
            )
          ],
        ),
      ),
    ));
  }
}
