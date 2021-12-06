import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static String incomeKey = "income";
  static String expenseKey = "expense";

  static Future<int> setIncome(int addIncomeValue) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    int preIncome = await pref.getInt(incomeKey) ?? 0;
    int newIncome = preIncome + addIncomeValue;
    bool isSet = await pref.setInt(incomeKey, newIncome );
    if(isSet){
      return newIncome;
    }
    return preIncome;
  }
  static Future<int> setExpense(int addExpenseValue) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    int preExpense = await pref.getInt(expenseKey) ?? 0;
    int newExpense = preExpense + addExpenseValue;
    bool isSet = await pref.setInt(expenseKey, newExpense );
    if(isSet){
      return newExpense;
    }
    return preExpense;
  }
  // static setExpense(int expense) async{
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   await pref.setInt(expenseKey, expense);
  // }

  static Future<int> getIncome()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt(incomeKey) ?? 0;
  }
  static Future<int> getExpense()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt(expenseKey) ?? 0;
  }

}