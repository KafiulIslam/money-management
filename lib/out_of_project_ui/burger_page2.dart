import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'burger_listview.dart';

class BurgerPageTwo extends StatefulWidget {
  @override
  _BurgerPageTwoState createState() => _BurgerPageTwoState();
}

class _BurgerPageTwoState extends State<BurgerPageTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Column(
          children: [
            Container(
              color: Color(0xFF010101),
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 8.0),
                    child: Text(
                      'Promotion',
                      style: TextStyle(
                          color: Color(0xFFD29E45),
                          fontFamily: 'Gotham',
                          fontWeight: FontWeight.w700,
                          fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 8.0),
                    child: Text(
                      'Menu',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Brandon Grotesque',
                          fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Text(
                      'Snacks',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Brandon Grotesque',
                          fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Text(
                      'Drinks',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Brandon Grotesque',
                          fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 8),
                    child: Icon(
                      Icons.search,
                      size: 22,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Icon(
                      Icons.person,
                      size: 22,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 15),
                    child: Icon(
                      Icons.local_offer,
                      size: 22,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF010101),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      '\$20.00',
                      style: TextStyle(
                          color: Color(0xFFF7B815),
                          fontFamily: 'Gotham',
                          fontWeight: FontWeight.w900,
                          fontSize: 35),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Only for limited time',
                      style: TextStyle(
                          color: Colors.white70,
                          fontFamily: 'SF Pro Text Light',
                          fontWeight: FontWeight.w300,
                          // fontWeight: FontWeight.w500,
                          fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.24,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFF010101),
                ),
                Positioned(
                  left: 80,
                  bottom: 65,
                  child: Text(
                    'Burger',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gotham',
                        fontWeight: FontWeight.w900,
                        fontSize: 80),
                  ),
                ),
                Positioned(
                    left: 130,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.45,
                      width: MediaQuery.of(context).size.width * .45,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('images/burger4.png'),
                        fit: BoxFit.contain,
                      )),
                    ))
              ],
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.24,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFF010101),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Our Classic Burger',
                        style: TextStyle(
                            color: Color(0xFFF7B815),
                            fontFamily: 'Brandon Grotesque',
                            fontWeight: FontWeight.w900,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 365),
                        child: Divider(
                          color: Color(0xFFF7B815),
                          thickness: 1.0,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'You are able to get beautiful blooms \n with no bursting your budget, \n provided that spending budget is usually realistic \n for your bouquets that you want to obtain.',
                            style: TextStyle(
                              // fontFamily: 'Gotham',
                              color: Colors.white70,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Stack(children: [
              Container(
                  height: MediaQuery.of(context).size.height * .21,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFF141414),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )),
              Positioned(
                  top: 20,
                  left: 320,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .05,
                    width: MediaQuery.of(context).size.width * .2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFF7B815)),
                    child: Center(
                      child: Text(
                        'Order Now',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Gotham'),
                      ),
                    ),
                  ))
            ]),
          ],
        ),
      ),
    );
  }
}
