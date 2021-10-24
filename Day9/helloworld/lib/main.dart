import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Hello World",
    home: Scaffold(
      appBar: AppBar(title: Text("Hello World")),
      body: Center(child: Text("Hello World" ,style: TextStyle(fontSize: 26.0, color: Colors.blueAccent), ),)
    )
    ));
}
