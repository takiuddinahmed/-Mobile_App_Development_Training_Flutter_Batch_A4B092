import 'package:flutter/material.dart';

class UserForm extends StatefulWidget {
  const UserForm({ Key? key }) : super(key: key);

  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  TextEditingController nameController = TextEditingController();

  String name = "Not assigned";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              label: Text("Name"),
              border: OutlineInputBorder()
            ),
          ),
          ElevatedButton(
            onPressed: ()=>{
              setState((){
                name = nameController.text;
              })
            }, 
            child: Text("Submit")
            ),
          Text("$name")
        ],
      )
    );
  }
}