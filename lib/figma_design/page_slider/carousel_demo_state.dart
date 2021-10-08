import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/figma_design/page_slider/corousel_class.dart';

class CarouselDemoState extends StatefulWidget {
  @override
  _CarouselDemoStateState createState() => _CarouselDemoStateState();
}

class _CarouselDemoStateState extends State<CarouselDemoState> {
  int _currentIndex = 0;

  List carouseList = [
    CarouselClassOne(
      backgroundColor: red,
      text1: 'You Spend',
      iconNextToText1: Icons.money_off_csred_outlined,
      dollar: '\$332',
      details: 'and your biggest\nspending is from',
      iconInTab: Icons.shopping_basket,
      iconColor: gold,
      textInTab: 'Shopping',
      balanceDollar: '\$120',
    ),
    CarouselClassOne(
      backgroundColor: green,
      text1: 'You Earned',
      iconNextToText1: Icons.attach_money,
      dollar: '\$6000',
      details: 'your biggest\nincome is from',
      iconInTab: Icons.shopping_basket,
      iconColor: gold,
      textInTab: 'Shopping',
      balanceDollar: '\$120',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [])),
    );
  }
}
