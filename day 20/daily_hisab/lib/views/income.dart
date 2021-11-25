import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IncomeView extends StatefulWidget {
  int income = 0;
  late var addIncome ;
  IncomeView({this.income = 0, this.addIncome}){}
  @override
  State<IncomeView> createState() => _IncomeViewState(income: income,addIncome: addIncome);
}

class _IncomeViewState extends State<IncomeView> {
  int income = 0;
  late var addIncome;
  _IncomeViewState({this.income = 0, this.addIncome}){}

  TextEditingController incomeInputController  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: Text("Total: $income BDT", textAlign: TextAlign.center,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: incomeInputController,
                decoration: InputDecoration(
                  labelText: "Input Income",
                  border: OutlineInputBorder()
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            ElevatedButton(
              onPressed: (){
                String incomeInputStr = incomeInputController.text;
                int incomeInputValue = int.parse(incomeInputStr);
                addIncome(incomeInputValue);
                setState(() {
                  income += incomeInputValue;
                });
                incomeInputController.clear();
              }, 
              child: Text("Add Income"))
          ]
        ),
    );
  }
}