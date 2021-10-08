import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/financial_report_page/detail_transaction.dart';
import 'constant_page.dart';

class CustomCommonButton extends StatelessWidget {
  CustomCommonButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: brandColor, borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontFamily: 'Gotham',
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.hintTextColor,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final Color hintTextColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: hintTextColor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: ass.withOpacity(.3)),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Color(0xFF7F3DFF)),
          borderRadius: BorderRadius.circular(15),
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: black.withOpacity(.30),
          ),
        ),
      ),
    );
  }
}

class CustomShortTextFormField extends StatelessWidget {
  const CustomShortTextFormField(
      {Key? key, required this.hintText, required this.controller})
      : super(key: key);

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 180,
      child: Center(
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: ass.withOpacity(.5)),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Color(0xFF7F3DFF)),
              borderRadius: BorderRadius.circular(15),
            ),
            prefixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: brandColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: eighteenAssInterTextStyle,
        ));
  }
}

class CustomTransactionTile extends StatefulWidget {
  CustomTransactionTile({
    Key? key,
    required this.icon,
    required this.color,
    required this.category,
    required this.summery,
    required this.amount,
    required this.time,
    required this.date,
    required this.type,
    required this.wallet,
    required this.dollarColor,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String category;
  final String summery;
  final String amount;
  final String time;
  final String date;
  final String type;
  final String wallet;
  final Color dollarColor;

  @override
  _CustomTransactionTileState createState() => _CustomTransactionTileState();
}

class _CustomTransactionTileState extends State<CustomTransactionTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailTransaction(
                      color: widget.dollarColor,
                      amount: widget.amount.toString(),
                      summery: widget.summery,
                      date: widget.date,
                      time: widget.time,
                      type: widget.type,
                      category: widget.category,
                      wallet: widget.wallet,
                    )));
      },
      child: Container(
        height: 89,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: widget.color.withOpacity(0.2)),
              child: Icon(
                widget.icon,
                color: widget.color,
                size: 30,
              ),
            ),
            Container(
              height: 80,
              width: 105,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.category,
                    overflow: TextOverflow.ellipsis,
                    style: fifteenBlackTextStyle,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    widget.summery,
                    overflow: TextOverflow.ellipsis,
                    style: thirteenAssTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  widget.amount,
                  style: TextStyle(
                      color: widget.dollarColor,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  widget.time,
                  style: thirteenAssTextStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCategoryTile extends StatefulWidget {
  CustomCategoryTile({
    Key? key,
    required this.totalExpense,
    required this.amount,
    required this.parameterColor,
    required this.category,
    required this.mark,
    required this.dollarColor,
    required this.summery,
    required this.date,
    required this.time,
    required this.type,
    required this.wallet,
  }) : super(
          key: key,
        );

  final Color parameterColor;
  final String category;
  final double totalExpense;
  final String mark;
  final double amount;
  final Color dollarColor;
  final String summery;
  final String date;
  final String time;
  final String type;
  final String wallet;

  double widthRatio(double a, double b) {
    return a / b;
  }

  @override
  _CustomCategoryTileState createState() => _CustomCategoryTileState();
}

class _CustomCategoryTileState extends State<CustomCategoryTile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailTransaction(
                      color: widget.dollarColor,
                      amount: widget.amount.toString(),
                      summery: widget.summery,
                      date: widget.date,
                      time: widget.time,
                      type: widget.type,
                      category: widget.category,
                      wallet: widget.wallet,
                    )));
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              height: 34,
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 34,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        border: Border.all(color: ass.withOpacity(0.2))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 14,
                          width: 14,
                          decoration: BoxDecoration(
                            color: widget.parameterColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 80,
                          child: FittedBox(
                            child: Text(
                              widget.category,
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                              softWrap: false,
                              style: fifteenBlackTextStyle,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 34,
                      width: 80,
                      child: Center(
                        child: FittedBox(
                          child: Text(
                            "${widget.mark}\$${widget.amount.toString()}",
                            style: TextStyle(
                                fontSize: 20,
                                color: widget.dollarColor,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Stack(children: [
              Container(
                height: 12,
                width: width,
                decoration: BoxDecoration(
                  color: waterAss,
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
              Container(
                height: 12,
                width: width *
                    widget.widthRatio(widget.amount, widget.totalExpense),
                decoration: BoxDecoration(
                    color: widget.parameterColor,
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(color: ass.withOpacity(0.2))),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
