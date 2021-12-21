import 'package:firebase_contact_app/views/contacts.dart';
import 'package:firebase_contact_app/views/editForm.dart';
import 'package:firebase_contact_app/views/form.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class App extends StatefulWidget {
  const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  String viewText = "list";
  String editId = "";

  cancel(){
    setState(() {
      viewText = "list";
    });
  }

  setEditView(String id){
    setState(() {
      viewText = "edit";
      editId = id;
    });
  }

  Widget showView (){
    if(viewText == "form"){
      return ContactForm(cancel: cancel,);
    }
    else if (viewText == "edit"){
      return ContactEditForm(cancel: cancel,id: editId);
    }
    return AllContactView(onEdit: setEditView,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Contact App"),),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              viewText = "form";
            });
          },
          child: Icon(Icons.add),
        ),
        body: FutureBuilder(
          future: Firebase.initializeApp(),
          builder: (context, snapshot){
            if(snapshot.hasError){
              return Center(child: Text(snapshot.error.toString()),);
            }
            else if (snapshot.hasData){
              return Center(
                      child: showView(),
                    );;
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      );
  }
}