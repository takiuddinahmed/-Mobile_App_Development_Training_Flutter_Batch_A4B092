import 'package:daily_hisab/views/dashboard.dart';
import 'package:daily_hisab/views/expenses.dart';
import 'package:daily_hisab/views/income.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int income = 300;
  int expense = 600;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Daily Hisab"),
          bottom: TabBar(
            tabs: [
              Tab(child: Icon(Icons.dashboard)),
              Tab(child: Icon(Icons.money),),
              Tab(child: Icon(Icons.outbox_sharp),),
              
            ],
          ),
        ),
        body: TabBarView(
          children: [
            DashboardView(expense: expense, income: income,),
            IncomeView(income: income),
            ExpenseView(expense: expense,)
          ],
        )
      ),
    );
  }
}