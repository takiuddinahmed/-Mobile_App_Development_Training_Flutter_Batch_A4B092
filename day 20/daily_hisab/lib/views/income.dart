import 'package:flutter/material.dart';

class IncomeView extends StatefulWidget {
  int income = 0;
  IncomeView({this.income = 0}){}
  @override
  State<IncomeView> createState() => _IncomeViewState(income: income);
}

class _IncomeViewState extends State<IncomeView> {
  int income = 0;
  _IncomeViewState({this.income = 0}){}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: Text("Total: $income BDT", textAlign: TextAlign.center,),
                ),
              ),
            ),
          ]
        ),
    );
  }
}