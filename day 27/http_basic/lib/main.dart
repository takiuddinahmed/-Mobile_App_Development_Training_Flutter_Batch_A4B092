import 'package:flutter/material.dart';
import 'package:http_basic/sohoj.dart';

main()=>runApp(RootApp());

class RootApp extends StatelessWidget {
  const RootApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Http Basic",
      home: Scaffold(
        appBar: AppBar(title: Text("Http Basic"),),
        body: SohojApp(),
      )
    );
  }
}