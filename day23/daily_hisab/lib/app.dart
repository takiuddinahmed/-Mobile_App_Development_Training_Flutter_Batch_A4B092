import 'package:daily_hisab/services/sharedPrefService.dart';
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

  int income = 00;
  int expense = 00;

  addIncome(int addIncomeValue)async{
    int newIncome = await SharedPrefService.setIncome(addIncomeValue) ;
    setState(() {
      income = newIncome;
    });
  }
  addExpense(int addExpenseValue)async{
    int newExpense = await SharedPrefService.setExpense(addExpenseValue) ;
    setState(() {
      expense = newExpense;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData()async{
    int _income = await SharedPrefService.getIncome();
    int _expense = await SharedPrefService.getExpense();
    setState(() {
      income = _income;
      expense = _expense;
    });
  }

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