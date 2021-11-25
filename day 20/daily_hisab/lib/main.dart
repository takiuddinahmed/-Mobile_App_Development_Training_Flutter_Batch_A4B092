import 'package:daily_hisab/app.dart';
import 'package:flutter/material.dart';

main() => runApp(RootApp()); // 기본 앱 생성

class RootApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Daily Hisab",
      home: MyApp()
    );
  }
}

