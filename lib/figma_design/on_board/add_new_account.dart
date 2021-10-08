import 'package:flutter/material.dart';
import 'add_new_wallet.dart';
import '../../common/common_class.dart';
import '../../common/constant_page.dart';

class AddNewAccount extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountTypeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: brandColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: brandColor,
          title: Text(
            'Add new account',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Inter',
              fontSize: 18,
            ),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 286,
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
                    '\$00.0',
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
                  height: 290,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(33),
                        topLeft: Radius.circular(33)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 35,
                        ),
                        CustomTextFormField(
                            hintTextColor: ass,
                            hintText: 'Name',
                            controller: _nameController),
                        SizedBox(
                          height: 10,
                        ),
                        CustomTextFormField(
                            hintTextColor: ass,
                            hintText: 'Account type',
                            controller: _accountTypeController),
                        SizedBox(
                          height: 35,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddNewWallet()));
                          },
                          child: CustomCommonButton(
                            text: 'Continue',
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
