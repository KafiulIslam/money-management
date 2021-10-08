import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'burger_listview.dart';

class BurgerOne extends StatefulWidget {
  @override
  _BurgerOneState createState() => _BurgerOneState();
}

class _BurgerOneState extends State<BurgerOne> {
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
              color: Color(0xFF141414),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Burger',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Brandon Grotesque',
                          fontWeight: FontWeight.w900,
                          fontSize: 45),
                    ),
                  ),
                  Center(
                    child: Text(
                      'House',
                      style: TextStyle(
                          color: Colors.white70,
                          fontFamily: 'SF Pro Text Light',
                          // fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.24,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF010101),
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //       top: 8, bottom: 8, left: 8, right: 8),
                    //   child: Container(
                    //     height: MediaQuery.of(context).size.height * 0.50,
                    //     width: MediaQuery.of(context).size.width * 0.40,
                    //     // height: 110,
                    //     // width: 120,
                    //     decoration: BoxDecoration(
                    //       // color: Color(0xFFEDEFF1),
                    //       // color: Color(0xFFD3DCE1),
                    //       borderRadius: BorderRadius.circular(18),
                    //     ),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       children: [
                    //         Padding(
                    //           padding: const EdgeInsets.only(right: 10.0),
                    //           child: Image.asset('images/burger1.png'),
                    //         ),
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             Padding(
                    //               padding: const EdgeInsets.only(
                    //                   left: 8.0, right: 12),
                    //               child: Text(
                    //                 'Classic Burger',
                    //                 style: TextStyle(
                    //                     color: Color(0xFFD29E45),
                    //                     fontFamily: 'SF Pro Text Light',
                    //                     fontWeight: FontWeight.bold,
                    //                     fontSize: 10),
                    //               ),
                    //             ),
                    //             Padding(
                    //               padding: const EdgeInsets.only(
                    //                   left: 12.0, right: 8),
                    //               child: Text(
                    //                 '\$12.00',
                    //                 style: TextStyle(
                    //                     color: Color(0xFFD29E45),
                    //                     fontFamily: 'SF Pro Text Light',
                    //                     fontSize: 10),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),// //
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 8, right: 8),
                    //   child: Stack(children: [
                    //     Container(
                    //       height: MediaQuery.of(context).size.height * 0.50,
                    //       width: MediaQuery.of(context).size.width * 0.40,
                    //       // height: 145,
                    //       // width: 120,
                    //       decoration: BoxDecoration(
                    //         // color: Color(0xFFEDEFF1),
                    //         color: Color(0xFFD3DCE1),
                    //         borderRadius: BorderRadius.circular(18),
                    //         image: DecorationImage(
                    //           image: AssetImage('images/burger1.png'),
                    //           fit: BoxFit.fill,
                    //         ),
                    //       ),
                    //     ),
                    //     Positioned(
                    //       top: 105,
                    //       child: Container(
                    //         // height: 40,
                    //         // width: 120,
                    //         height: MediaQuery.of(context).size.height * 0.10,
                    //         width: MediaQuery.of(context).size.width,
                    //         decoration: BoxDecoration(
                    //           color: Colors.white,
                    //           borderRadius: BorderRadius.only(
                    //               bottomLeft: Radius.circular(18),
                    //               bottomRight: Radius.circular(18)),
                    //         ),
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             Text(
                    //               'Aster Bouquet',
                    //               style: TextStyle(
                    //                   color: Colors.black,
                    //                   fontFamily: 'SF Pro Text Light',
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: 10),
                    //             ),
                    //             Text(
                    //               '\$30.00',
                    //               style: TextStyle(
                    //                   color: Colors.black,
                    //                   fontFamily: 'SF Pro Text Light',
                    //                   fontSize: 8),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ]),
                    // ),

                    BurgerListView(
                      image: 'images/burger1.png',
                      burgerName: 'Classic Burger',
                      price: '\$10.00',
                    ),
                    BurgerListView(
                      image: 'images/burger2.png',
                      burgerName: 'Chicken Burger',
                      price: '\$15.00',
                    ),
                    BurgerListView(
                      image: 'images/burger3.png',
                      burgerName: 'Beef Burger',
                      price: '\$18.00',
                    ),
                    BurgerListView(
                      image: 'images/burger4.png',
                      burgerName: 'Grill Burger',
                      price: '\$20.00',
                    ),
                    BurgerListView(
                      image: 'images/burger5.png',
                      burgerName: 'Mutton Burger',
                      price: '\$25.00',
                    ),
                  ]),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.24,
              width: MediaQuery.of(context).size.width,
              // color: Color(0xFF010101),
              color: Color(0xFF010101),
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    BurgerListView(
                      image: 'images/burger5.png',
                      burgerName: 'Mutton Burger',
                      price: '\$25.00',
                    ),
                    BurgerListView(
                      image: 'images/burger4.png',
                      burgerName: 'Grill Burger',
                      price: '\$20.00',
                    ),
                    BurgerListView(
                      image: 'images/burger3.png',
                      burgerName: 'Beef Burger',
                      price: '\$18.00',
                    ),
                    BurgerListView(
                      image: 'images/burger2.png',
                      burgerName: 'Chicken Burger',
                      price: '\$15.00',
                    ),
                    BurgerListView(
                      image: 'images/burger1.png',
                      burgerName: 'Classic Burger',
                      price: '\$10.00',
                    ),
                  ]),
            ),
            Expanded(
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
