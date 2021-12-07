import 'package:flutter/material.dart';
import 'package:http_app/app.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Http App",
      home: Scaffold( 
        appBar: AppBar(title: Text("Http App"),),
        body: App()
      )
    );
  }
}