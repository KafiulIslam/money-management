import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';

class FinancialReportInGraphTab extends StatefulWidget {
  @override
  _FinancialReportInGraphTabState createState() =>
      _FinancialReportInGraphTabState();
}

class _FinancialReportInGraphTabState extends State<FinancialReportInGraphTab> {
  bool expenseIncomeSwitch = true;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        expenseIncomeSwitch
            ? ExpenseAndIncomeAmountWithGraph(
                amount: "332",
              )
            : ExpenseAndIncomeAmountWithGraph(
                amount: "6000",
              ),
        SizedBox(
          height: 8.0,
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
                          'Transaction',
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
        expenseIncomeSwitch
            ? ExpenseTransactionTile()
            : IncomeTransactionTile(),
      ],
    );
  }
}

class ExpenseAndIncomeAmountWithGraph extends StatefulWidget {
  ExpenseAndIncomeAmountWithGraph({Key? key, required this.amount})
      : super(key: key);

  final String amount;

  @override
  _ExpenseAndIncomeAmountWithGraphState createState() =>
      _ExpenseAndIncomeAmountWithGraphState();
}

class _ExpenseAndIncomeAmountWithGraphState
    extends State<ExpenseAndIncomeAmountWithGraph> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: 220,
      width: width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Container(
              height: 45,
              width: width,
              child: Text(
                '\$${widget.amount}',
                style: thirtySixBlackTextStyle,
              ),
            ),
          ),
          Container(
            height: 175,
            width: width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/graph.jpg'), fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}

class ExpenseTransactionTile extends StatefulWidget {
  @override
  _ExpenseTransactionTileState createState() => _ExpenseTransactionTileState();
}

class _ExpenseTransactionTileState extends State<ExpenseTransactionTile> {
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
            CustomTransactionTile(
              icon: Icons.shop,
              color: gold,
              category: 'Shopping',
              summery: 'Buy some grocery',
              amount: '\-\$120',
              time: '10:00 AM',
              dollarColor: red,
              date: 'Saturday 4 June 2021',
              wallet: 'Wallet',
              type: 'Expense',
            ),
            CustomTransactionTile(
              icon: Icons.file_copy,
              color: brandColor,
              category: 'Subscription',
              summery: 'Disney + Annual',
              amount: '\-\$80',
              time: '03:30 AM',
              dollarColor: red,
              date: 'Sunday 5 June 2021',
              wallet: 'Wallet',
              type: 'Expense',
            ),
            CustomTransactionTile(
              icon: Icons.restaurant,
              color: red,
              category: 'Food',
              summery: 'Buy ramen',
              amount: '\-\$32',
              time: '07:30 AM',
              dollarColor: red,
              date: 'Sunday 5 June 2021',
              wallet: 'Wallet',
              type: 'Expense',
            ),
          ],
        ),
      ),
    );
  }
}

class IncomeTransactionTile extends StatefulWidget {
  @override
  _IncomeTransactionTileState createState() => _IncomeTransactionTileState();
}

class _IncomeTransactionTileState extends State<IncomeTransactionTile> {
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
            CustomTransactionTile(
              icon: Icons.attach_money_rounded,
              color: green,
              category: 'Salary',
              summery: 'Salary for July',
              amount: '\-\$5000',
              time: '09:30 AM',
              dollarColor: green,
              date: 'Wednesday 1 June 2021',
              wallet: 'Cheque',
              type: 'Income',
            ),
            CustomTransactionTile(
              icon: Icons.wallet_giftcard,
              color: black,
              category: 'Passive Income',
              summery: 'UID Sales',
              amount: '\-\$1000',
              time: '08:30 AM',
              dollarColor: green,
              date: 'Thursday 2 June 2021',
              wallet: 'Wallet',
              type: 'Income',
            ),
          ],
        ),
      ),
    );
  }
}
