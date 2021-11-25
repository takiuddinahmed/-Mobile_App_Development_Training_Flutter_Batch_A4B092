import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExpenseView extends StatefulWidget {
  int expense = 0;
  late var addExpense ;
  ExpenseView({this.expense = 0, this.addExpense}){}
  @override
  State<ExpenseView> createState() => _ExpenseViewState(expense: expense, addExpense: addExpense);
}

class _ExpenseViewState extends State<ExpenseView> {
  int expense = 0;
  late var addExpense;
  _ExpenseViewState({this.expense = 0, this.addExpense}){}

  TextEditingController expenseInputController = TextEditingController();

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: expenseInputController,
                decoration: InputDecoration(
                  labelText: "Input Expense",
                  border: OutlineInputBorder()
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            ElevatedButton(
              onPressed: (){
                String expenseInputStr = expenseInputController.text;
                int expenseInputValue = int.parse(expenseInputStr);
                addExpense(expenseInputValue);
                setState(() {
                  expense += expenseInputValue;
                });
                expenseInputController.clear();
              }, 
              child: Text("Add expense"))
          ]
        ),
    );
  }
}