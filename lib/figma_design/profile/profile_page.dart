import 'package:flutter/material.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/figma_design/account_balance.dart';
import 'package:ui_practice/figma_design/create_budget/may_month_budget.dart';
import 'package:ui_practice/figma_design/month/monthly_income_expenses_page.dart';
import 'package:ui_practice/figma_design/on_board/montra1.dart';
import 'package:ui_practice/figma_design/profile/account_in_profile.dart';
import 'package:ui_practice/figma_design/profile/export_data_profile.dart';
import 'package:ui_practice/figma_design/profile/log_out_in_profile.dart';
import 'package:ui_practice/figma_design/profile/settings_in_profile.dart';
import 'package:ui_practice/financial_report_page/financial_report.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
          return LogOutInProfile();
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

  bool switchColor = true;
  int _selectedIndex = 0;

  bool changeBackground = true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // changeBackground = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: waterAss,
      appBar: AppBar(
        backgroundColor: waterAss,
        elevation: 0,
        title: Text('Profile', style: eighteenBlackTextStyle),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 85,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              border: Border.all(color: brandColor, width: 2),
                              color: white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          Positioned(
                            top: 1,
                            bottom: 1,
                            left: 1,
                            right: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                height: 76,
                                width: 76,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                        image: AssetImage('images/pic for.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Username',
                            style: TextStyle(
                                color: ass,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Kafiul Islam',
                            style: TextStyle(
                                color: black,
                                fontSize: 22,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.edit,
                          color: black,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                height: 356,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TileInProfile(
                        color: brandColor,
                        icon: Icons.file_copy,
                        text: 'Account',
                        nextPage: AccountInProfile(),
                      ),
                      TileInProfile(
                        color: brandColor,
                        icon: Icons.settings,
                        text: 'Setting',
                        nextPage: SettingInProfile(),
                      ),
                      TileInProfile(
                        color: brandColor,
                        icon: Icons.import_export,
                        text: 'Export Data',
                        nextPage: ExportInProfile(),
                      ),
                      GestureDetector(
                        onTap: () {
                          createAlertDialog(context);
                        },
                        child: Container(
                          height: 88,
                          width: width,
                          child: Row(
                            children: [
                              Container(
                                height: 52,
                                width: 52,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: red.withOpacity(0.2)),
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  child: Icon(
                                    Icons.logout,
                                    size: 30,
                                    color: red,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 20,
                                width: 120,
                                child: Text(
                                  "Logout",
                                  textAlign: TextAlign.start,
                                  style: eighteenBlackTextStyle,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   selectedFontSize: 12,
      //   unselectedItemColor: ass,
      //   selectedItemColor: brandColor,
      //   unselectedLabelStyle: TextStyle(color: ass, fontSize: 10),
      //   showUnselectedLabels: true,
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: IconButton(
      //         onPressed: () {
      //           Navigator.push(
      //               context, MaterialPageRoute(builder: (context) => Montra()));
      //         },
      //         icon: Icon(Icons.home, size: 23),
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: IconButton(
      //         onPressed: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                   builder: (context) => MonthlyIncomeExpensePage()));
      //         },
      //         icon: Icon(Icons.monetization_on, size: 23),
      //       ),
      //       label: 'Transaction',
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Container(
      //             height: 40,
      //             width: 40,
      //             decoration: BoxDecoration(
      //                 color: brandColor,
      //                 borderRadius: BorderRadius.circular(100)),
      //             child: IconButton(
      //                 onPressed: () {
      //                   _createAlertDialog(context);
      //                 },
      //                 icon: Icon(
      //                   Icons.add,
      //                   color: white,
      //                 ))),
      //         label: 'Add'),
      //     BottomNavigationBarItem(
      //       icon: IconButton(
      //         onPressed: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => BudgetForMay()));
      //         },
      //         icon: Icon(
      //           CustomPieChart.pie_chart__1_,
      //           size: 23,
      //         ),
      //       ),
      //       label: 'Budget',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: IconButton(
      //         onPressed: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => Profile()));
      //         },
      //         icon: Icon(
      //           Icons.person,
      //           size: 23,
      //         ),
      //       ),
      //       label: 'Profile',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      // ),
    );
  }
}

class TileInProfile extends StatefulWidget {
  TileInProfile({
    Key? key,
    required this.color,
    required this.icon,
    required this.text,
    required this.nextPage,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String text;
  final Widget nextPage;

  @override
  _TileInProfileState createState() => _TileInProfileState();
}

class _TileInProfileState extends State<TileInProfile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => widget.nextPage));
        });
      },
      child: Container(
        height: 88,
        width: width,
        child: Row(
          children: [
            Container(
              height: 52,
              width: 52,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: widget.color.withOpacity(0.2)),
              child: Container(
                height: 32,
                width: 32,
                child: Icon(
                  widget.icon,
                  size: 30,
                  color: widget.color,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 20,
              width: 120,
              child: Text(
                widget.text,
                textAlign: TextAlign.start,
                style: eighteenBlackTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
