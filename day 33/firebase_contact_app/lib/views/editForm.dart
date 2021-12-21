import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ContactEditForm extends StatefulWidget {
  late Function cancel;
  late String id;
  ContactEditForm( { required this.cancel, required this.id} ){}

  @override
  _ContactEditFormState createState() => _ContactEditFormState(cancel: cancel, id: id);
}

class _ContactEditFormState extends State<ContactEditForm> {
  late Function cancel;
  late String id;
  _ContactEditFormState({required this.cancel, required this.id}){}
  
  var contactCollection = FirebaseFirestore.instance.collection("contacts");


  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();

  onSave() async {
    String name = nameController.text;
    String email = emailController.text;
    String phone = phoneController.text;
    await contactCollection.doc(id).update(
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
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData () async {
    var data = await contactCollection.doc(id).get();
    Map<String, dynamic> mapData = data!.data() as Map<String, dynamic>;
    nameController.text = data["name"];
    emailController.text = data["email"];
    phoneController.text = data["phone"];
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Text("Update Contact", textAlign: TextAlign.center, style: TextStyle(fontSize: 25),),
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
                child: Text("Update")
              ),

            ],)
        ],
      ),
    );
  }
}