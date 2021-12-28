import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hisab_nikash/provider/view.dart';
import 'package:provider/provider.dart';


class AddUserFormView extends StatefulWidget {
  const AddUserFormView({ Key? key }) : super(key: key);

  @override
  _AddUserFormViewState createState() => _AddUserFormViewState();
}

class _AddUserFormViewState extends State<AddUserFormView> {
  var nameController = TextEditingController();

  var CustomerCollection = FirebaseFirestore.instance.collection("user@user.com");

  addCustomer() async {
    String name = nameController.text;
    CustomerCollection.add({
      "name" : name
    });
  }

  @override
  Widget build(BuildContext context) {
    ViewModel viewModel = Provider.of<ViewModel>(context,listen:false);
    return Container(
      width: 400,
      padding: EdgeInsets.all(15),
      child: Column(
        children : [
          Text("Add Customer", style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Name"
            ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: (){
                viewModel.updateView("list");
              },  child: Text("Cancel"),),
              ElevatedButton(onPressed: (){
                addCustomer();
                viewModel.updateView("list");
              },  child: Text("Add"),),
            ],
          )
        ]
      ),
    );
  }
}