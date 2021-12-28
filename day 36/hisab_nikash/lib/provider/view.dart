
import 'package:flutter/material.dart';

class ViewModel extends ChangeNotifier {
  String _viewText = "list";
  String get viewText => _viewText;

  updateView(String view){
    _viewText = view;
    notifyListeners();
  }
}