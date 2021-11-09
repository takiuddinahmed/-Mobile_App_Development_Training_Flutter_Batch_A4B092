import 'package:flutter/material.dart';
import 'package:list_view/userCard.dart';
import 'package:list_view/userListShow.dart';
main()=>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List View",
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.contact_phone),
          title: Text("Contact App"),
        ),
        // body: UserListShow(),
        body: UserCards(),
       )
    );
  }
}


