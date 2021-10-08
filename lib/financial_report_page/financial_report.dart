import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/figma_design/create_budget/may_month_budget.dart';
import 'package:ui_practice/financial_report_page/financial_report_graph_tab.dart';
import 'package:ui_practice/financial_report_page/financial_report_pie_tab.dart';

class FinancialReport extends StatefulWidget {
  @override
  _FinancialReportState createState() => _FinancialReportState();
}

class _FinancialReportState extends State<FinancialReport> {
  bool graphAndPieSwitch = true;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          size: 25,
          color: black,
        ),
        title: Text(
          'Financial Report',
          style: eighteenBlackTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BudgetForMay()));
            },
            icon: Icon(
              Icons.arrow_forward,
              size: 25,
              color: black,
            ),
          )
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Container(
                height: 64,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 10, bottom: 10),
                      child: Container(
                        height: 64,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: ass.withOpacity(0.2))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_back_ios_outlined,
                              size: 25,
                              color: brandColor,
                            ),
                            Text(
                              'Month',
                              style: fifteenBlackTextStyle,
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          graphAndPieSwitch = !graphAndPieSwitch;
                          var index = 0;
                          if (!graphAndPieSwitch) {
                            index = 1;
                          }
                        });
                      },
                      child: Container(
                        height: 64,
                        width: 100,
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: graphAndPieSwitch
                                      ? brandColor
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  )),
                              child: Icon(
                                CustomGrapIcon.graph_1,
                                color: graphAndPieSwitch ? white : brandColor,
                                size: 25,
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: graphAndPieSwitch
                                      ? Colors.transparent
                                      : brandColor,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )),
                              child: Icon(
                                CustomPieChart.pie_chart__1_,
                                color: graphAndPieSwitch ? brandColor : white,
                                size: 22,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              graphAndPieSwitch
                  ? FinancialReportInGraphTab()
                  : FinancialReportInPieTab(),
            ],
          ),
        ),
      ),
    ));
  }
}

class CustomGrapIcon {
  CustomGrapIcon._();

  static const _kFontFam = 'CustomGrapIcon';
  static const String? _kFontPkg = null;

  static const IconData graph_1 =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  // static const IconData graph =
  //     IconData(0xf35a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}

class PieChart {
  PieChart._();

  static const _kFontFam = 'PieChart';
  static const String? _kFontPkg = null;

  static const IconData graph =
      IconData(0xf35a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}

class CustomPieChart {
  CustomPieChart._();

  static const _kFontFam = 'CustomPieChart';
  static const String? _kFontPkg = null;

  static const IconData pie_chart__1_ =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData graph =
      IconData(0xf35a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
