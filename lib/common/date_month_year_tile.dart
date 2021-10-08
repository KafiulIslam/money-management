import 'package:flutter/material.dart';
import 'package:ui_practice/common/constant_page.dart';

class YearListViewShowBox extends StatefulWidget {
  @override
  _YearListViewShowBoxState createState() => _YearListViewShowBoxState();
}

class _YearListViewShowBoxState extends State<YearListViewShowBox> {
  final europeanCountries = [
    for (var i = 1980; i <= 2050; i++) i,
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: europeanCountries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Center(
                child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: brandColor.withOpacity(0.2),
                  ),
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Text(
                    europeanCountries[index].toString(),
                    style: fifteenBlackTextStyle,
                  ))),
            )),
          );
        },
      ),
    );
    ;
  }
}

class MonthListViewShowBox extends StatefulWidget {
  @override
  _MonthListViewShowBoxState createState() => _MonthListViewShowBoxState();
}

class _MonthListViewShowBoxState extends State<MonthListViewShowBox> {
  final europeanCountries = [
    'Jan',
    'Feb',
    'Mar',
    'May',
    'April',
    'May',
    'June',
    'July',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: europeanCountries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Center(
                child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: brandColor.withOpacity(0.2),
                  ),
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Text(
                    europeanCountries[index],
                    style: fifteenBlackTextStyle,
                  ))),
            )),
          );
        },
      ),
    );
  }
}

class DateListViewShowBox extends StatefulWidget {
  @override
  _DateListViewShowBoxState createState() => _DateListViewShowBoxState();
}

class _DateListViewShowBoxState extends State<DateListViewShowBox> {
  final List<int> europeanCountries = [
    for (var i = 1; i <= 31; i++) i,
  ].toList();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: europeanCountries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Center(
                child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: brandColor.withOpacity(0.2),
                  ),
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Text(
                    europeanCountries[index].toString(),
                    style: fifteenBlackTextStyle,
                  ))),
            )),
          );
        },
      ),
    );
  }
}
