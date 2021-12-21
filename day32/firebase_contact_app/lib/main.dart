import 'package:firebase_contact_app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(RootApp());
}

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contact App",
      home: Scaffold(
        appBar: AppBar(title: Text("Contact App"),),
        body: FutureBuilder(
          future: Firebase.initializeApp(),
          builder: (context, snapshot){
            if(snapshot.hasError){
              return Center(child: Text(snapshot.error.toString()),);
            }
            else if (snapshot.hasData){
              return App();
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      )
    );
  }
}