import 'package:flutter/material.dart';
import '../../common/constant_page.dart';

class SetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 128,
              width: 128,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: green,
              ),
              child: Center(
                  child: Icon(
                Icons.done,
                color: Colors.white,
                size: 50,
              )),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'You are set !',
              style: TextStyle(color: black, fontSize: 24, fontFamily: 'Inter'),
            )
          ],
        ),
      ),
    ));
  }
}
