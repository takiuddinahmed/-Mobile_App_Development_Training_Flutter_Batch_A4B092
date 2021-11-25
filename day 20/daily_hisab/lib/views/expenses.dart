import 'package:flutter/material.dart';

class ExpenseView extends StatefulWidget {
  int expense = 0;
  ExpenseView({this.expense = 0}){}
  @override
  State<ExpenseView> createState() => _ExpenseViewState(expense: expense);
}

class _ExpenseViewState extends State<ExpenseView> {
  int expense = 0;
  _ExpenseViewState({this.expense = 0}){}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: Text("Total: $expense BDT", textAlign: TextAlign.center,),
                ),
              ),
            ),
          ]
        ),
    );
  }
}