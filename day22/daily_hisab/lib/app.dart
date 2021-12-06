import 'package:daily_hisab/views/dashboard.dart';
import 'package:daily_hisab/views/expenses.dart';
import 'package:daily_hisab/views/income.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<SharedPreferences> sharedPref = SharedPreferences.getInstance();

  late Future <int> income;
  late Future <int> expense;

  @override
  initState(){
    super.initState();
    income = sharedPref.then((SharedPreferences prefs) {
      return prefs.getInt('income') ?? 0;
    });
    expense = sharedPref.then((SharedPreferences prefs) {
      return prefs.getInt('expense') ?? 0;
    });
  }

   Future<void> addIncome(int addIncomeValue) async {
    final SharedPreferences prefs = await sharedPref;
    final int _income = (prefs.getInt('income') ?? 0) + addIncomeValue;

    setState(() {
      income = prefs.setInt('income', _income).then((bool success) {
        return _income;
      });
    });
  }
   Future<void> addExpense(int addExpenseValue) async {
    final SharedPreferences prefs = await sharedPref;
    final int _expense = (prefs.getInt('expense') ?? 0) + addExpenseValue;

    setState(() {
      expense = prefs.setInt('expense', _expense).then((bool success) {
        return _expense;
      });
    });
  }

  // addIncome(int addIncomeValue){
  //   setState(() {
  //     income += addIncomeValue;
  //   });
  // }
  // addExpense(int addExpenseValue){
  //   setState(() {
  //     expense += addExpenseValue;
  //   });
  // }

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
            IncomeView(income: income, addIncome: addIncome,),
            ExpenseView(expense: expense,addExpense: addExpense,)
          ],
        )
      ),
    );
  }
}