import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/financial_report_page/detail_transaction.dart';

class FinancialReportInPieTab extends StatefulWidget {
  @override
  _FinancialReportInPieTabState createState() =>
      _FinancialReportInPieTabState();
}

class _FinancialReportInPieTabState extends State<FinancialReportInPieTab> {
  bool expenseIncomeSwitch = true;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        expenseIncomeSwitch
            ? Container(
                height: 240,
                width: 388,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/expensepie.jpg"),
                        fit: BoxFit.cover)),
              )
            : Container(
                height: 240,
                width: 388,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/incomepie.jpg"),
                        fit: BoxFit.cover)),
              ),
        SizedBox(
          height: 60.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                expenseIncomeSwitch = !expenseIncomeSwitch;

                var index = 0;
                if (!expenseIncomeSwitch) {
                  index = 1;
                }
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: waterAss,
                borderRadius: BorderRadius.circular(32),
              ),
              height: 56,
              width: 420,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 56,
                    width: 188,
                    decoration: BoxDecoration(
                      color:
                          expenseIncomeSwitch ? brandColor : Colors.transparent,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Center(
                      child: Text(
                        'Expense',
                        style: TextStyle(
                            color: expenseIncomeSwitch ? white : black,
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 56,
                    width: 188,
                    decoration: BoxDecoration(
                      color:
                          expenseIncomeSwitch ? Colors.transparent : brandColor,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Center(
                      child: Text(
                        'Income',
                        style: TextStyle(
                            color: expenseIncomeSwitch ? black : white,
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          height: 64,
          width: width,
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, top: 10, bottom: 10),
                  child: Container(
                    height: 64,
                    width: 130,
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
                          'Category',
                          style: fifteenBlackTextStyle,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: ass.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('images/transactionIcon.jpg'),
                            fit: BoxFit.contain))),
              ],
            ),
          ),
        ),
        expenseIncomeSwitch ? ExpenseCategoryTile() : IncomeCategoryTile(),
      ],
    );
  }
}

class ExpenseCategoryTile extends StatefulWidget {
  @override
  _ExpenseCategoryTileState createState() => _ExpenseCategoryTileState();
}

class _ExpenseCategoryTileState extends State<ExpenseCategoryTile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Container(
        height: 270,
        width: width,
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            CustomCategoryTile(
              totalExpense: 332,
              amount: 120,
              parameterColor: gold,
              category: "Shopping",
              mark: '-',
              dollarColor: red,
              summery: "Buy some grocery",
              date: "Saturday 4 June 2021",
              time: "10:00",
              type: "Expense",
              wallet: "Wallet",
            ),
            SizedBox(
              height: 16,
            ),
            CustomCategoryTile(
              totalExpense: 332,
              amount: 80,
              parameterColor: brandColor,
              category: "Subscription",
              mark: '-',
              dollarColor: red,
              summery: "Disney + annual",
              date: "Saturday 4 June 2021",
              time: "03:30",
              type: "Expense",
              wallet: "Wallet",
            ),
            SizedBox(
              height: 16,
            ),
            CustomCategoryTile(
              totalExpense: 332,
              amount: 32,
              parameterColor: red,
              category: "Food",
              mark: '-',
              dollarColor: red,
              summery: "Buy a rameen",
              date: "Saturday 4 June 2021",
              time: "07:30",
              type: "Expense",
              wallet: "Wallet",
            ),
          ],
        ),
      ),
    );
  }
}

class IncomeCategoryTile extends StatefulWidget {
  @override
  _IncomeCategoryTileState createState() => _IncomeCategoryTileState();
}

class _IncomeCategoryTileState extends State<IncomeCategoryTile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Container(
        height: 270,
        width: width,
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            CustomCategoryTile(
              totalExpense: 6000,
              amount: 5000,
              parameterColor: green,
              category: "Salary",
              mark: '+',
              dollarColor: green,
              summery: "Salary for July",
              date: "Wednesday 4 June 2021",
              time: "04:30",
              type: "Salary",
              wallet: "cheque",
            ),
            SizedBox(
              height: 16,
            ),
            CustomCategoryTile(
              totalExpense: 6000,
              amount: 1000,
              parameterColor: black,
              category: "Passive",
              mark: '+',
              dollarColor: green,
              summery: "UIB Sales",
              date: "Wednesday 4 June 2021",
              time: "08:30",
              type: "Sales",
              wallet: "Wallet",
            ),
          ],
        ),
      ),
    );
  }
}
