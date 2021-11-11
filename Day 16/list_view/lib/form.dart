import 'package:flutter/material.dart';
import 'package:list_view/user.dart';
class UserForm extends StatefulWidget {

  late var back;
  UserForm(this.back);

  @override
  _UserFormState createState() => _UserFormState(back);
}


class _UserFormState extends State<UserForm> {
  late var back;
  _UserFormState(this.back);

  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String name = "";
  String contactNumber = "";
  String email = "";

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
          SizedBox(height: 10,),
          TextField(
            controller: contactController,
            decoration: InputDecoration(
              label: Text("Contact Number"),
              border: OutlineInputBorder()
            ),
          ),
          
          SizedBox(height: 10,),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              label: Text("Email"),
              border: OutlineInputBorder()
            ),
          ),
          ElevatedButton(
            onPressed: ()=>{
              setState((){
                name = nameController.text;
                contactNumber = contactController.text;
                email = emailController.text;
                User usr = User(name,contactNumber,email,"image.jfif");
                users.add(usr);
                nameController.clear();
                contactController.clear();
                emailController.clear();
                back();
              })

            }, 
            child: Text("Submit")
            ),
          
        ],
      )
    );
  }
}