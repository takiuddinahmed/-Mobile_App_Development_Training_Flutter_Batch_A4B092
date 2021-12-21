import 'package:firebase_contact_app/views/contacts.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  String viewText = "list";

  Widget showView (){
    return AllContactView();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: showView(),
    );
  }
}