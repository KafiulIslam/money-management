import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/figma_design/page_slider/corousel_class.dart';

class PageViewSlider extends StatefulWidget {
  @override
  _PageViewSliderState createState() => _PageViewSliderState();
}

class _PageViewSliderState extends State<PageViewSlider> {
  int slideIndex = 0;
  PageController controller = PageController();

  final List<Widget> list = [
    new CarouselClassOne(
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
    new CarouselClassOne(
      backgroundColor: red,
      text1: 'You Spend',
      iconNextToText1: Icons.money_off_csred_outlined,
      dollar: '\$332',
      details: 'and your biggest\nspending is from',
      iconInTab: Icons.shopping_basket,
      iconColor: gold,
      textInTab: 'Shopping',
      balanceDollar: '\$120',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          scrollDirection: Axis.horizontal,
          onPageChanged: (value) {},
          children: [
            new CarouselClassOne(
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
            new CarouselClassOne(
              backgroundColor: red,
              text1: 'You Spend',
              iconNextToText1: Icons.money_off_csred_outlined,
              dollar: '\$332',
              details: 'and your biggest\nspending is from',
              iconInTab: Icons.shopping_basket,
              iconColor: gold,
              textInTab: 'Shopping',
              balanceDollar: '\$120',
            )
            // widget.controller: controller,
          ],
        ),
      ),
    );
  }
}
