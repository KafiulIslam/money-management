import 'package:email_auth/email_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/figma_design/account_balance.dart';
import 'forget_password.dart';
import '../../common/common_class.dart';
import '../../common/constant_page.dart';
import 'verification_page.dart';

class LogInPage extends StatefulWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, false);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: brandColor,
          ),
        ),
        title: Text(
          'Log In',
          style: appBarTextStyle,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20.0, bottom: 20, left: 20, right: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                TextFormField(
                  controller: widget._emailController,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Color(0xFFE8EAED).withOpacity(.5)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Color(0xFF7F3DFF)),
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
                SizedBox(
                  height: 14,
                ),
                TextFormField(
                  controller: widget._passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Color(0xFFE8EAED).withOpacity(.5)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Color(0xFF7F3DFF)),
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccountBalance()));
                  },
                  child: CustomCommonButton(
                    text: 'Log In',
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgetPassword()));
                  },
                  child: Text(
                    'Forgot Password ?',
                    style: mediumPinkTextStyle,
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account yet ?',
                    style: TextStyle(
                      color: Color(0xFF91919F),
                      fontSize: 18,
                    ),
                    /*defining default style is optional */
                    children: <TextSpan>[
                      TextSpan(text: ' Sign Up', style: mediumPinkTextStyle),
                    ],
                  ),
                  textAlign: TextAlign.start,
                )
              ]),
        ),
      ),
    ));
  }
}
