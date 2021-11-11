import 'package:flutter/material.dart';
import 'package:list_view/form.dart';
import 'package:list_view/userCard.dart';
import 'package:list_view/userListShow.dart';
main()=>runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String view = "list";

  Widget _show(){
    if(view == "add"){
      return UserForm(change);
    }
    return PageView(
          children: [
            UserListShow(),
            SingleChildScrollView(child: UserCards()),
          ],
        );
  }

  change(){
     setState(() {
              if (view == "list"){
                view = "add";
              }
              else {
                view = "list";
              }
            });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List View",
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.contact_phone),
          title: Text("Contact App"),
        ),
        body: _show(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            change();
          },
          child: Icon(view == "list" ? Icons.add : Icons.remove),
        ),
        // body: UserListShow(),
        // body: SingleChildScrollView(child: UserCards()),
        // body: UserForm()
       )
    );
  }
}


