import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'let_go_page.dart';
import 'security_pin.dart';
import '../../common/common_class.dart';
import '../../common/constant_page.dart';

class ResetPassword extends StatefulWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
          'Reset Password',
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
                  height: MediaQuery.of(context).size.height * 0.25,
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
                  height: 10,
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
                  height: 35,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecurityPin()));
                  },
                  child: CustomCommonButton(
                    text: 'Continue',
                  ),
                ),
              ]),
        ),
      ),
    ));
  }
}
