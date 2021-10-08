import 'package:flutter/material.dart';

class BurgerListView extends StatelessWidget {
  const BurgerListView({
    Key? key,
    this.image = 'images/burger1.png',
    this.burgerName = 'Classic Burger',
    this.price = '\$10.00',
  }) : super(key: key);

  final String image;
  final String burgerName;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.50,
        width: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      burgerName,
                      style: TextStyle(
                          color: Color(0xFFD29E45),
                          fontFamily: 'SF Pro Text Light',
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          color: Color(0xFFD29E45),
                          fontFamily: 'SF Pro Text Light',
                          fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
