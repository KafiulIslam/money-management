import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/figma_design/profile/edit_account_in_profile.dart';

class DetailAccountInProfile extends StatefulWidget {
  DetailAccountInProfile({
    Key? key,
    required this.image,
    required this.text,
    required this.amount,
  }) : super(key: key);

  final String image;
  final String text;
  final String amount;

  @override
  _DetailAccountInProfileState createState() => _DetailAccountInProfileState();
}

class _DetailAccountInProfileState extends State<DetailAccountInProfile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, false);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: black,
            size: 20,
          ),
        ),
        title: Text('Detail Account', style: eighteenBlackTextStyle),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditAccountInProfile(
                              amount: widget.amount,
                              text: widget.text,
                            )));
              },
              icon: Icon(
                Icons.edit,
                size: 25,
                color: black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: Container(
                    height: 140,
                    width: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              // color: widget.color.withOpacity(0.2)
                              color: Color(0xFFF1F1FA)),
                          child: Center(
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(widget.image),
                                    fit: BoxFit.contain),
                              ),
                            ),
                          ),
                        ),
                        Container(
                            height: 30,
                            width: 80,
                            child: Center(
                              child: Text(
                                widget.text,
                                style: TextStyle(
                                    color: black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Inter'),
                              ),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            height: 40,
                            width: 110,
                            child: Center(
                              child: Text(
                                '\$${widget.amount}',
                                style: TextStyle(
                                    color: black,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Inter'),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Text(
                      'Today',
                      style: eighteenBlackTextStyle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: CustomTransactionTile(
                    icon: Icons.shop,
                    color: gold,
                    category: 'Shopping',
                    summery: 'Buy some grocery',
                    amount: '\-\$120',
                    time: '10:00 AM',
                    dollarColor: red,
                    date: 'Saturday 4 June 2021',
                    wallet: 'Wallet',
                    type: 'Expense',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: CustomTransactionTile(
                    icon: Icons.file_copy,
                    color: brandColor,
                    category: 'Subscription',
                    summery: 'Disney + Annual',
                    amount: '\-\$80',
                    time: '03:30 AM',
                    dollarColor: red,
                    date: 'Saturday 4 June 2021',
                    wallet: 'Wallet',
                    type: 'Expense',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: CustomTransactionTile(
                    icon: Icons.restaurant,
                    color: red,
                    category: 'Food',
                    summery: 'Buy ramen',
                    amount: '\-\$32',
                    time: '07:30 AM',
                    dollarColor: red,
                    date: 'Sunday 5 June 2021',
                    wallet: 'Wallet',
                    type: 'Expense',
                  ),
                ),
                Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Text(
                      'Yesterday',
                      style: eighteenBlackTextStyle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: CustomTransactionTile(
                    icon: Icons.monetization_on,
                    color: green,
                    category: 'Salary',
                    summery: 'Salary for July',
                    amount: '\+\$5000',
                    time: '04:30 AM',
                    dollarColor: green,
                    date: 'Wednesday 1 June 2021',
                    wallet: 'Cheque',
                    type: 'Income',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: CustomTransactionTile(
                    icon: Icons.emoji_transportation,
                    color: Color(0xFF0077FF),
                    category: 'Transportation',
                    summery: 'Charging Tesla',
                    amount: '\-\$18',
                    time: '08:30 AM',
                    dollarColor: red,
                    date: 'Sunday 5 June 2021',
                    wallet: 'Wallet',
                    type: 'Expense',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
