import 'package:email_auth/email_auth.dart';
import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'let_go_page.dart';
import '../../common/common_class.dart';
import '../../common/constant_page.dart';

class VerificationPage extends StatefulWidget {
  VerificationPage({Key? key, this.emailController = 'laxih55540@hyprhost.com'})
      : super(key: key);

  final String emailController;

  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  final TextEditingController otpController = TextEditingController();

  void verifyOTP() {
    var response = EmailAuth.validate(
        receiverMail: widget.emailController, userOTP: otpController.text);
  }

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
          'Verification',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.10,
                ),
                Text(
                  'Enter your\nverification code',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Inter',
                    fontSize: 36,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, bottom: 30, right: 220),
                  child: TextFormField(
                    controller: otpController,
                    decoration: InputDecoration(
                        hintText: 'Verification Code',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color(0xFFE8EAED).withOpacity(.5)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Color(0xFF7F3DFF)),
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                ),
                // StreamBuilder<int>(
                //     stream: _stopWatchTimer.rawTime,
                //     initialData: 5,
                //     builder: (context, snapshot) {
                //       final value = snapshot.data;
                //       final displayTime = StopWatchTimer.getDisplayTime(value!,
                //           hours: _isMinute);
                //       return Text(
                //         displayTime,
                //         style: TextStyle(
                //           color: Color(0xFF7F3DFF),
                //           fontFamily: 'Inter',
                //           fontSize: 18,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       );
                //     }),
                Text(
                  '00 : 00 ',
                  style: TextStyle(
                    color: Color(0xFF7F3DFF),
                    fontFamily: 'Inter',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: RichText(
                    text: TextSpan(
                      text: 'We send verification code to your \nemail',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: '  .......... @gmail',
                            style: TextStyle(
                              color: Color(0xFF7F3DFF),
                              fontSize: 15,
                            )),
                        TextSpan(
                            text: '\nYou can check your mailbox',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            )),
                      ],
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Text(
                  'I didn\'t receive the code ? Send me again',
                  style: TextStyle(
                    color: Color(0xFF7F3DFF),
                    fontFamily: 'Inter',
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LetGoPage()));
                  },
                  child: CustomCommonButton(
                    text: 'Verify',
                  ),
                )
              ]),
        ),
      ),
    ));
  }
}
