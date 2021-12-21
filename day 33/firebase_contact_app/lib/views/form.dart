import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  late Function cancel;
  ContactForm( { required this.cancel} ){}

  @override
  _ContactFormState createState() => _ContactFormState(cancel: cancel);
}

class _ContactFormState extends State<ContactForm> {
  late Function cancel;
  _ContactFormState({required this.cancel}){}
  var contactCollection = FirebaseFirestore.instance.collection("contacts");

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();

  onSave() async {
    String name = nameController.text;
    String email = emailController.text;
    String phone = phoneController.text;

    
    
    await contactCollection.add(
      {
        "name": name,
        "email": email,
        "phone" : phone
      });
      nameController.clear();
      emailController.clear();
      phoneController.clear();
    cancel();


  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Text("Add Contact", textAlign: TextAlign.center, style: TextStyle(fontSize: 25),),
          SizedBox(height: 10,),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Name"
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email"
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            controller: phoneController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Phone"
            ),
          ),
          SizedBox(height: 10,),
          Row (
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: (){cancel();}, 
                child: Text("Cancel")
              ),
              ElevatedButton(
                onPressed: (){onSave();}, 
                child: Text("Save")
              ),

            ],)
        ],
      ),
    );
  }
}