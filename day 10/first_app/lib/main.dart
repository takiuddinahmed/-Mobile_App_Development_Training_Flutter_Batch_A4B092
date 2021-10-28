import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: "first app",
      home: Scaffold(
        appBar: AppBar(title: Text("First App"),),
        body: Home()
      )
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center (
      child: Image.network("https://media-eng.dhakatribune.com/uploads/2020/02/web-1581343246938.jpg"),
      );
  }
}