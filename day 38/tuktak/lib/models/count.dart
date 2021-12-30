
import 'package:flutter/cupertino.dart';

class Count extends ChangeNotifier{
  int _count = 0;
  
  int get count => _count;

  setCount(int c){
    _count = c;
    notifyListeners();
  }

}