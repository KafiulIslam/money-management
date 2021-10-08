import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';

class EditAccountInProfile extends StatefulWidget {
  EditAccountInProfile({Key? key, required this.amount, required this.text})
      : super(key: key);

  final String amount;
  final String text;

  @override
  _EditAccountInProfileState createState() => _EditAccountInProfileState();
}

class _EditAccountInProfileState extends State<EditAccountInProfile> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountTypeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: brandColor,
      appBar: AppBar(
        backgroundColor: brandColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, false);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: white,
            size: 20,
          ),
        ),
        title: Text('Edit account',
            style: TextStyle(
                color: white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Inter')),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => EditAccountInProfile()));
              },
              icon: Icon(
                Icons.delete,
                size: 25,
                color: white,
              ))
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Balance',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                      fontFamily: 'Gotham',
                      fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  '\$${widget.amount}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 64,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 430,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(33),
                      topLeft: Radius.circular(33)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      CustomTextFormField(
                          hintTextColor: ass,
                          hintText: widget.text,
                          controller: _nameController),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextFormField(
                          hintTextColor: ass,
                          hintText: 'Bank',
                          controller: _accountTypeController),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Bank',
                        style: fifteenBlackTextStyle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .12,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/bankimg.jpg'),
                                fit: BoxFit.contain)),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      CustomCommonButton(
                        text: 'Continue',
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
