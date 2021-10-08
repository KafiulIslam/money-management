import 'package:flutter/material.dart';

import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/figma_design/page_slider/corousel_class.dart';
import 'package:page_indicator/page_indicator.dart';

class SliderGoogleExample extends StatefulWidget {
  @override
  _SliderGoogleExampleState createState() => _SliderGoogleExampleState();
}

class _SliderGoogleExampleState extends State<SliderGoogleExample> {
  int slideIndex = 0;
  PageController controller = PageController();

  final marker = Container(
    height: 3,
    width: 90,
    color: white.withOpacity(0.2),
  );

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
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
      ),
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
      BrandColorCarouselClassOne(),
      BrandColorCarouselClassTwo(),
    ];

    final PageIndicatorContainer container = new PageIndicatorContainer(
      child: new PageView(
        children: list,
        controller: controller,
      ),
      length: list.length,
      align: IndicatorAlign.top,
      padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
      indicatorSpace: 10,
      indicatorColor: white.withOpacity(0.4),
      indicatorSelectorColor: white,
      shape: IndicatorShape.defaultRoundRectangle,
    );

    return Stack(children: <Widget>[
      Container(
          // color: Colors.red,
          child: container,
          margin: EdgeInsets.only(bottom: 50)),
    ]);
    ;
  }
}
