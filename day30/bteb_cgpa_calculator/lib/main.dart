import 'package:bteb_cgpa_calculator/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "bteb cgpa calculator",
      home: Scaffold(
        appBar: AppBar(title: Text("BTEB CGPA CALCULATOR")),
        body: App()
      )
    );
  }
}
