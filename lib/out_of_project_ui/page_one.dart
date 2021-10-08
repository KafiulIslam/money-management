import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 5,
        backgroundColor: Color(0xFFFEFEFE),
        centerTitle: true,
        title: Text(
          'Pick Flower',
          style: TextStyle(
            fontSize: 28,
            color: Color(0xFF384D21),
            fontFamily: 'Gotham',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFEDEFF1),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 20,
                    child: Text(
                      'Gift and Flower',
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                          fontFamily: 'Brandon Grotesque',
                          fontWeight: FontWeight.w600),
                    ),
                  ), //gift and flower text
                  Positioned(
                    top: 60,
                    left: 20,
                    child: Text('for your beloved',
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.black,
                            fontFamily: 'Brandon Grotesque',
                            fontWeight: FontWeight.w600)),
                  ), //for your beloved text
                  Positioned(
                    top: 75,
                    left: 20,
                    child: Container(
                      height: 100,
                      width: 200,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'You are able to get beautiful blooms \n with no bursting your budget, \n provided that spending budget is usually realistic \n for your bouquets that you want to obtain.',
                          style: TextStyle(
                            // fontFamily: 'Gotham',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ), // summary
                  Positioned(
                    top: 160,
                    left: 20,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.black),
                          child: Center(
                            child: Text(
                              'Start Shopping',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text Light',
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  ), //start shop button
                  Stack(
                    children: [
                      Positioned(
                        top: 214,
                        left: 20,
                        child: Container(
                          height: 70,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color(0xFFD3DCE1),
                          ),
                        ),
                      ), //Container
                      Positioned(
                        top: 218,
                        left: 24,
                        child: Container(
                          height: 62,
                          width: 132,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.white,
                          ),
                        ),
                      ), //Container
                      Positioned(
                        top: 200,
                        left: 15,
                        child: Container(
                            height: 80,
                            width: 90,
                            child: FittedBox(
                                fit: BoxFit.contain,
                                child: Image.asset('images/flowertop1.png'))),
                      ), //flowertop1.png image
                      Positioned(
                        top: 230,
                        left: 100,
                        child: Text(
                          'Offer',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'SF Pro Text Light',
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      Positioned(
                        top: 250,
                        left: 100,
                        child: Text(
                          '\$50',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'SF Pro Text Light',
                              fontSize: 12),
                        ),
                      ), // Offer text
                    ],
                  ),
                  Positioned(
                    left: 70,
                    right: 1,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, left: 20, right: 10),
                      child: Image.asset('images/women.png'),
                    ),
                  ) //women image
                ],
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xFF070504)),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '3000+',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gotham',
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'bla bla',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SF Pro Text Light',
                              fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '4000+',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gotham',
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'bla bla',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SF Pro Text Light',
                              fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '5000+',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gotham',
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'bla bla',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SF Pro Text Light',
                              fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '6000+',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gotham',
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'bla bla',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SF Pro Text Light',
                              fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                  color: Color(0xFFEDEFF1),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0, right: 325),
                        child: Text(
                          'Product',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontFamily: 'SF Pro Text Light'),
                        ),
                      ), //product
                      Padding(
                        padding: const EdgeInsets.only(right: 190),
                        child: Text(
                          'Our best seller of this month ',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: 'Brandon Grotesque',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          color: Color(0xFFEDEFF1),
                          width: MediaQuery.of(context).size.width,
                          child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: Stack(children: [
                                    Container(
                                      height: 145,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        // color: Color(0xFFEDEFF1),
                                        color: Color(0xFFD3DCE1),
                                        borderRadius: BorderRadius.circular(18),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'images/flowertop2.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 105,
                                      child: Container(
                                        height: 40,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(18),
                                              bottomRight: Radius.circular(18)),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 3, right: 5),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Aster Bouquet',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'SF Pro Text Light',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    '\$30.00',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'SF Pro Text Light',
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 3),
                                              child: Container(
                                                height: 25,
                                                width: 25,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Colors.black,
                                                ),
                                                child: Icon(
                                                  Icons.shopping_basket,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: Stack(children: [
                                    Container(
                                      height: 145,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        // color: Color(0xFFEDEFF1),
                                        color: Color(0xFFD3DCE1),
                                        borderRadius: BorderRadius.circular(18),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'images/flowertop4.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 105,
                                      child: Container(
                                        height: 40,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(18),
                                              bottomRight: Radius.circular(18)),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 3, right: 5),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Rose Bouquet',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'SF Pro Text Light',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    '\$40.00',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'SF Pro Text Light',
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 3),
                                              child: Container(
                                                height: 25,
                                                width: 25,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Colors.black,
                                                ),
                                                child: Icon(
                                                  Icons.shopping_basket,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: Stack(children: [
                                    Container(
                                      height: 145,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        // color: Color(0xFFEDEFF1),
                                        color: Color(0xFFD3DCE1),
                                        borderRadius: BorderRadius.circular(18),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'images/flowertop5.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 105,
                                      child: Container(
                                        height: 40,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(18),
                                              bottomRight: Radius.circular(18)),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 3, right: 5),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Lily Bouquet',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'SF Pro Text Light',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    '\$30.00',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'SF Pro Text Light',
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 3),
                                              child: Container(
                                                height: 25,
                                                width: 25,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Colors.black,
                                                ),
                                                child: Icon(
                                                  Icons.shopping_basket,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: Stack(children: [
                                    Container(
                                      height: 145,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        // color: Color(0xFFEDEFF1),
                                        color: Color(0xFFD3DCE1),
                                        borderRadius: BorderRadius.circular(18),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'images/flowertop3.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 105,
                                      child: Container(
                                        height: 40,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(18),
                                              bottomRight: Radius.circular(18)),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 3, right: 5),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Beli  Bouquet',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'SF Pro Text Light',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    '\$20.00',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'SF Pro Text Light',
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 3),
                                              child: Container(
                                                height: 25,
                                                width: 25,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Colors.black,
                                                ),
                                                child: Icon(
                                                  Icons.shopping_basket,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: Stack(children: [
                                    Container(
                                      height: 145,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        // color: Color(0xFFEDEFF1),
                                        color: Color(0xFFD3DCE1),
                                        borderRadius: BorderRadius.circular(18),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'images/flowertop6.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 105,
                                      child: Container(
                                        height: 40,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(18),
                                              bottomRight: Radius.circular(18)),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 3, right: 5),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Kamini  Bouquet',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'SF Pro Text Light',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    '\$25.00',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'SF Pro Text Light',
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 3),
                                              child: Container(
                                                height: 25,
                                                width: 25,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Colors.black,
                                                ),
                                                child: Icon(
                                                  Icons.shopping_basket,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                              ]),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 8, right: 8),
                      //   child: Stack(children: [
                      //     Container(
                      //       height: 145,
                      //       width: 120,
                      //       decoration: BoxDecoration(
                      //         // color: Color(0xFFEDEFF1),
                      //         color: Color(0xFFD3DCE1),
                      //         borderRadius: BorderRadius.circular(18),
                      //         image: DecorationImage(
                      //           image: AssetImage('images/flowertop2.png'),
                      //           fit: BoxFit.fill,
                      //         ),
                      //       ),
                      //     ),
                      //     Positioned(
                      //       top: 105,
                      //       child: Container(
                      //         height: 40,
                      //         width: 120,
                      //         decoration: BoxDecoration(
                      //           color: Colors.white,
                      //           borderRadius: BorderRadius.only(
                      //               bottomLeft: Radius.circular(18),
                      //               bottomRight: Radius.circular(18)),
                      //         ),
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: [
                      //             Padding(
                      //               padding: const EdgeInsets.only(
                      //                   left: 3, right: 5),
                      //               child: Column(
                      //                 mainAxisAlignment:
                      //                     MainAxisAlignment.center,
                      //                 children: [
                      //                   Text(
                      //                     'Aster Bouquet',
                      //                     style: TextStyle(
                      //                         color: Colors.black,
                      //                         fontFamily: 'SF Pro Text Light',
                      //                         fontWeight: FontWeight.bold,
                      //                         fontSize: 10),
                      //                   ),
                      //                   Text(
                      //                     '\$30.00',
                      //                     style: TextStyle(
                      //                         color: Colors.black,
                      //                         fontFamily: 'SF Pro Text Light',
                      //                         fontSize: 8),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //             Padding(
                      //               padding: const EdgeInsets.only(
                      //                   left: 5, right: 3),
                      //               child: Container(
                      //                 height: 25,
                      //                 width: 25,
                      //                 decoration: BoxDecoration(
                      //                   borderRadius:
                      //                       BorderRadius.circular(100),
                      //                   color: Colors.black,
                      //                 ),
                      //                 child: Icon(
                      //                   Icons.shopping_basket,
                      //                   color: Colors.white,
                      //                   size: 15,
                      //                 ),
                      //               ),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ]),
                      // ),
                      // Expanded(
                      //   child: Container(
                      //     color: Colors.white70,
                      //     height: 70,
                      //     child: ListView.builder(
                      //         itemCount: 5,
                      //         shrinkWrap: true,
                      //         scrollDirection: Axis.horizontal,
                      //         itemBuilder: (context, index) {
                      //           return Padding(
                      //             padding:
                      //                 const EdgeInsets.only(left: 8, right: 8),
                      //             child: Stack(children: [
                      //               Container(
                      //                 height: 145,
                      //                 width: 120,
                      //                 decoration: BoxDecoration(
                      //                   // color: Color(0xFFEDEFF1),
                      //                   color: Color(0xFFD3DCE1),
                      //                   borderRadius: BorderRadius.circular(18),
                      //                   image: DecorationImage(
                      //                     image: AssetImage(
                      //                         'images/flowertop2.png'),
                      //                     fit: BoxFit.fill,
                      //                   ),
                      //                 ),
                      //               ),
                      //               Positioned(
                      //                 top: 105,
                      //                 child: Container(
                      //                   height: 40,
                      //                   width: 120,
                      //                   decoration: BoxDecoration(
                      //                     color: Colors.white,
                      //                     borderRadius: BorderRadius.only(
                      //                         bottomLeft: Radius.circular(18),
                      //                         bottomRight: Radius.circular(18)),
                      //                   ),
                      //                   child: Row(
                      //                     mainAxisAlignment:
                      //                         MainAxisAlignment.center,
                      //                     children: [
                      //                       Padding(
                      //                         padding: const EdgeInsets.only(
                      //                             left: 3, right: 5),
                      //                         child: Column(
                      //                           mainAxisAlignment:
                      //                               MainAxisAlignment.center,
                      //                           children: [
                      //                             Text(
                      //                               'Aster Bouquet',
                      //                               style: TextStyle(
                      //                                   color: Colors.black,
                      //                                   fontFamily:
                      //                                       'SF Pro Text Light',
                      //                                   fontWeight:
                      //                                       FontWeight.bold,
                      //                                   fontSize: 10),
                      //                             ),
                      //                             Text(
                      //                               '\$30.00',
                      //                               style: TextStyle(
                      //                                   color: Colors.black,
                      //                                   fontFamily:
                      //                                       'SF Pro Text Light',
                      //                                   fontSize: 8),
                      //                             ),
                      //                           ],
                      //                         ),
                      //                       ),
                      //                       Padding(
                      //                         padding: const EdgeInsets.only(
                      //                             left: 5, right: 3),
                      //                         child: Container(
                      //                           height: 25,
                      //                           width: 25,
                      //                           decoration: BoxDecoration(
                      //                             borderRadius:
                      //                                 BorderRadius.circular(
                      //                                     100),
                      //                             color: Colors.black,
                      //                           ),
                      //                           child: Icon(
                      //                             Icons.shopping_basket,
                      //                             color: Colors.white,
                      //                             size: 15,
                      //                           ),
                      //                         ),
                      //                       )
                      //                     ],
                      //                   ),
                      //                 ),
                      //               ),
                      //             ]),
                      //           );
                      //         }),
                      //   ),
                      // ),
                    ],
                  )),
            )

            //black container
            //best seller
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
