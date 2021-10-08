import 'package:flutter/material.dart';
import 'package:ui_practice/figma_design/landing_page_in_page_view/landing_page_slider.dart';
import 'out_of_project_ui/burger_page1.dart';
import 'out_of_project_ui/burger_page2.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/common/example_from_google.dart';
import 'package:ui_practice/figma_design/account_balance.dart';
import 'figma_design/on_board/add_new_account.dart';
import 'figma_design/on_board/add_new_wallet.dart';
import 'figma_design/on_board/back_to_login.dart';
import 'package:ui_practice/figma_design/create_budget/may_month_budget.dart';
import 'package:ui_practice/figma_design/expense_income_page.dart';
import 'figma_design/on_board/forget_password.dart';
import 'figma_design/on_board/let_go_page.dart';
import 'figma_design/on_board/login_page.dart';
import 'package:ui_practice/figma_design/month/monthly_income_expenses_page.dart';
import 'figma_design/on_board/montra1.dart';
import 'figma_design/landing_page_in_page_view/landing_page.dart';

import 'figma_design/on_board/reset_password.dart';
import 'figma_design/on_board/security_pin.dart';
import 'figma_design/on_board/set_page.dart';
import 'figma_design/on_board/sign_up_page.dart';
import 'figma_design/on_board/verification_page.dart';
import 'package:ui_practice/financial_report_page/financial_report.dart';
import 'out_of_project_ui/page_one.dart';
import 'package:ui_practice/figma_design/notification_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          // MyHomePage(),
          // PageOne(),
          // BurgerOne(),
          // BurgerPageTwo(),

          Montra(),
          LandingPageSlider(),

          // SignUpPage(),
          // VerificationPage(),
          // LogInPage(),
          // ForgetPassword(),
          // BackToLogIn(),
          // ResetPassword(),
          // SecurityPin(),
          // LetGoPage(),
          // AddNewAccount(),
          // AddNewWallet(),
          SetPage(),
          // AccountBalance(),
          // ExpenseAndIncome(
          //   text1: 'Expense',
          //   color: red,
          // ),
          // ExpenseAndIncome(
          //   text1: 'Income',
          //   color: green,
          // ),
          // NotificationPage(),
          // MonthlyIncomeExpensePage(),
          SliderGoogleExample(),
          FinancialReport(),
          // BudgetForMay(),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          elevation: 5,
          backgroundColor: Color(0xFF113859),
          centerTitle: true,
          title: Text(
            'Trending Code',
            style: TextStyle(fontSize: 25, color: Colors.white70),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                Color(0xFF113859),
                Color(0xFF497FAB),
              ])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(children: [
                  Container(
                    margin: EdgeInsets.only(left: 100),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.local_offer,
                      color: Colors.yellowAccent,
                      size: 28,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 50),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.price_check,
                      color: Colors.pinkAccent,
                      size: 28,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Trending Code',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(0xFF497FAB),
                              Color(0xFF113859),
                            ])),
                    child: Center(
                      child: Text(
                        'Sign in with email',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(0xFF497FAB),
                              Color(0xFF113859),
                            ])),
                    child: Center(
                      child: Text(
                        'Sign in with google',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
