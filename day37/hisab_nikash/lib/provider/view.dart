
import 'package:flutter/material.dart';

class ViewModel extends ChangeNotifier {
  String _viewText = "list";
  String get viewText => _viewText;

  String _id = "";
  String get id => _id;

  updateView(String view){
    _viewText = view;
    notifyListeners();
  }

  updateId(String _uid){
    _id = _uid;
    notifyListeners();
  }
}