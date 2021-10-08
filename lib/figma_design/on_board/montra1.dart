import 'package:flutter/material.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/figma_design/account_balance.dart';
import 'package:ui_practice/figma_design/create_budget/may_month_budget.dart';
import 'package:ui_practice/figma_design/landing_page_in_page_view/landing_page_slider.dart';
import 'package:ui_practice/figma_design/month/monthly_income_expenses_page.dart';
import 'package:ui_practice/figma_design/profile/profile_page.dart';
import 'package:ui_practice/figma_design/show_tree_options_in_bottom.dart';
import 'package:ui_practice/financial_report_page/financial_report.dart';

class Montra extends StatefulWidget {
  @override
  _MontraState createState() => _MontraState();
}

class _MontraState extends State<Montra> {
  createAlertDialog(BuildContext context) {
    return showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        useRootNavigator: false,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return ShowBoxMonthlyIncomeExpense(
            notificationNumber: notificationNumber,
          );
        });
  }

  _createAlertDialog(BuildContext context) {
    return showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        useRootNavigator: false,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return TransparentShowBoxWithThreeOptions();
        });
  }

  int _selectedIndex = 0;
  int notificationNumber = 0;

  int _currentIndex = 0;
  final List<Widget> _children = [
    LandingPageSlider(),
    AccountBalance(),
    ShowThreeStar(),
    BudgetForMay(),
    Profile(),
  ];

  bool changeBackground = true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      changeBackground = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedItemColor: ass,
        unselectedLabelStyle: TextStyle(color: ass, fontSize: 10),
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 20),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on, size: 20),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
              icon: Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      color: brandColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                      onPressed: () {
                        _createAlertDialog(context);
                      },
                      icon: Center(
                        child: Icon(
                          Icons.add,
                          color: white,
                          size: 12,
                        ),
                      ))),
              label: 'Add'),
          BottomNavigationBarItem(
            icon: Icon(
              CustomPieChart.pie_chart__1_,
              size: 20,
            ),
            label: 'Budget',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 20,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: brandColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
