import 'package:flutter/material.dart';
import 'package:tic_tac_toe/app.dart';

main()=>runApp(RootApp());

class RootApp extends StatelessWidget {
  const RootApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tic Tac Toe",
      home: Scaffold( 
        appBar: AppBar(
          title: Text("Tic Tac Toe"),
        ),
        body: GameApp(),
      )
    );
  }
}

