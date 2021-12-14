import 'package:basic_crud/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "basic crud",
      home: App()
    );
  }
}