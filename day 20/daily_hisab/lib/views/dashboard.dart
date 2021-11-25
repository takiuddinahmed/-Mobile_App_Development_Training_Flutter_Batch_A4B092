import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  int income = 0;
  int expense = 0;
  DashboardView({this.income = 0,this.expense = 0}){}


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 500,
        // width: 200,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: Text("Total: ${income - expense} BDT", textAlign: TextAlign.center,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: Text("Income: $income BDT", textAlign: TextAlign.center,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: Text("Expense: $expense BDT", textAlign: TextAlign.center,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
