import 'package:flutter/material.dart';

class EachBox extends StatelessWidget {
  String text = "";
  late var userClick;
  int index;

  EachBox({this.text = "", required this.userClick, required this.index}){}

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ()=>{userClick(index)},
      child: SizedBox(
        height: 150,
        width: 150,
        child: Center(
          child: Text("$text", textAlign: TextAlign.center, style: TextStyle(fontSize: 70, color: Colors.redAccent),))),
    );
  }
}