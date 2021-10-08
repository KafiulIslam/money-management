import 'package:email_auth/email_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'verification_page.dart';

class SignUpPage extends StatefulWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  void sendOTP() async {
    EmailAuth.sessionName = 'Test session';
    var response =
        await EmailAuth.sendOtp(receiverMail: widget._emailController.text);
  }

  bool _checked = false;
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
          'Sign UP',
          style:
              TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'Inter'),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20.0, bottom: 20, left: 20, right: 20),
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Name',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3, color: Color(0xFFE8EAED).withOpacity(.5)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Color(0xFF7F3DFF)),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(
              height: 15,
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
                    borderSide: BorderSide(width: 3, color: Color(0xFF7F3DFF)),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: widget._passwordController,
              decoration: InputDecoration(
                  hintText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3, color: Color(0xFFE8EAED).withOpacity(.5)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Color(0xFF7F3DFF)),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.platform,
                value: _checked,
                onChanged: (bool? value) {
                  setState(() {
                    _checked = value!;
                  });
                },
                activeColor: Color(0xFF7F3DFF),
                checkColor: Colors.white,
                title:
                    // Text(
                    //   'By signing up you agree to the \n Terms of service and privacy policy',
                    //   textAlign: TextAlign.start,
                    // ),

                    RichText(
                  text: TextSpan(
                    text: 'By signing up you agree to the',
                    style: TextStyle(color: Colors.black),
                    /*defining default style is optional */
                    children: <TextSpan>[
                      TextSpan(
                          text: ' \n Terms of service and privacy policy',
                          style: TextStyle(
                              color: Color(0xFF7F3DFF), fontSize: 15)),
                    ],
                  ),
                  textAlign: TextAlign.start,
                )),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                sendOTP();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VerificationPage(
                              emailController: widget._emailController.text,
                            )));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFF7F3DFF),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontFamily: 'Gotham',
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'or with',
              style: TextStyle(
                  color: Color(0xFF91919F),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.08,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/google.png'),
                            fit: BoxFit.contain)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Sign Up with Google',
                    style: TextStyle(
                        fontFamily: 'Gotham',
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                text: 'Already have an account ?',
                style: TextStyle(
                    color: Color(0xFF91919F),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                /*defining default style is optional */
                children: <TextSpan>[
                  TextSpan(
                      text: 'Log In',
                      style: TextStyle(
                          color: Color(0xFF7F3DFF),
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
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
