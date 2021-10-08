import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';
import '../on_board/add_new_account.dart';
import 'package:ui_practice/figma_design/profile/detail_account_in_profile.dart';
import 'package:ui_practice/figma_design/profile/edit_account_in_profile.dart';

class AccountInProfile extends StatefulWidget {
  @override
  _AccountInProfileState createState() => _AccountInProfileState();
}

class _AccountInProfileState extends State<AccountInProfile> {
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
        title: Text('Account', style: eighteenBlackTextStyle),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 160,
              width: width,
              child: Stack(
                children: [
                  Container(
                    height: 160,
                    width: width,
                  ),
                  Positioned(
                      top: 80,
                      right: 350,
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [brandColor, white]),
                          color: brandColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                            topRight: Radius.circular(100),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 20,
                      left: 360,
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [brandColor.withOpacity(0.8), white]),
                          color: brandColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                            topRight: Radius.circular(100),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 10,
                      left: 60,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                              colors: [brandColor.withOpacity(0.6), white]),
                          color: brandColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                            topRight: Radius.circular(100),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 110,
                      right: 80,
                      child: Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                              colors: [brandColor.withOpacity(0.5), white]),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                            topRight: Radius.circular(100),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 120,
                      right: 260,
                      child: Container(
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                              colors: [brandColor.withOpacity(0.1), white]),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                            topRight: Radius.circular(100),
                          ),
                        ),
                      )),
                  Container(
                    height: 160,
                    width: width,
                    color: white.withOpacity(0.65),
                  ),
                  Positioned(
                      top: 20,
                      left: 130,
                      child: Container(
                        height: 85,
                        width: 150,
                        child: Column(
                          children: [
                            Container(
                              height: 20,
                              width: 150,
                              child: Center(
                                child: Text(
                                  'Account Balance',
                                  style: TextStyle(
                                      color: ass,
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 150,
                              child: Center(
                                child: Text(
                                  '\$9400',
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 40,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TileInAccountProfile(
                color: Color(0xFF5233FF),
                image: 'images/wallet.png',
                text: 'Wallet',
                amount: '4000'),
            TileInAccountProfile(
                color: brandColor,
                image: 'images/bitcoin.png',
                text: 'Chase',
                amount: '1000'),
            TileInAccountProfile(
                color: brandColor,
                image: 'images/bank.png',
                text: 'City',
                amount: '6000'),
            TileInAccountProfile(
                color: brandColor,
                image: 'images/paypal.png',
                text: 'Paypal',
                amount: '2000'),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddNewAccount()));
                  },
                  child: CustomCommonButton(text: '+ Add new wallet')),
            )
          ],
        ),
      ),
    );
  }
}

class TileInAccountProfile extends StatefulWidget {
  TileInAccountProfile(
      {Key? key,
      required this.color,
      required this.image,
      required this.text,
      required this.amount})
      : super(key: key);

  final Color color;
  final String image;
  final String text;
  final String amount;

  @override
  _TileInAccountProfileState createState() => _TileInAccountProfileState();
}

class _TileInAccountProfileState extends State<TileInAccountProfile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailAccountInProfile(
                      image: widget.image,
                      text: widget.text,
                      amount: widget.amount,
                    )));
      },
      child: Container(
        height: 80,
        width: width,
        child: Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          image: AssetImage(widget.image), fit: BoxFit.contain),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 22,
                width: 80,
                child: Text(
                  widget.text,
                  style: eighteenBlackTextStyle,
                ),
              ),
              SizedBox(
                width: 160,
              ),
              Container(
                height: 22,
                width: 70,
                child: Text(
                  '\$${widget.amount}',
                  style: eighteenBlackTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaypalIcon {
  PaypalIcon._();

  static const _kFontFam = 'PaypalIcon';
  static const String? _kFontPkg = null;

  static const IconData graph =
      IconData(0xf35a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}

class Bank {
  Bank._();

  static const _kFontFam = 'Bank';
  static const String? _kFontPkg = null;

  static const IconData graph =
      IconData(0xf35a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}

class Cheque {
  Cheque._();

  static const _kFontFam = 'Cheque';
  static const String? _kFontPkg = null;

  static const IconData graph =
      IconData(0xf35a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
