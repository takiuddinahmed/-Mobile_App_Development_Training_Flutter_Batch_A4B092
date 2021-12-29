import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hisab_nikash/provider/view.dart';
import 'package:provider/provider.dart';


class AddTransectionForm extends StatefulWidget {
  const AddTransectionForm({ Key? key }) : super(key: key);

  @override
  _AddTransectionFormState createState() => _AddTransectionFormState();
}

class _AddTransectionFormState extends State<AddTransectionForm> {
  var dateController = TextEditingController();
  var amountController = TextEditingController();
  var noteController = TextEditingController();
  var typeController = TextEditingController();

  addTransection(String id){
    String date = dateController.text;
    int amount = int.parse(amountController.text);
    String note = noteController.text;
    String type = typeController.text;

    var collection = FirebaseFirestore.instance.collection("user@user.com").doc(id).collection("transections");
    collection.add({
      "date": date,
      "amount": amount,
      "note":note,
      "type": type
    });
  }

  @override
  Widget build(BuildContext context) {
    ViewModel viewModel = Provider.of<ViewModel>(context);
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Text("Add Transection"),
          SizedBox(height: 10,),
          TextField(
            controller: dateController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Date"
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            controller: amountController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Amount"
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            controller: noteController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Note"
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            controller: typeController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Type"
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: (){
                viewModel.updateView("customer");
              },  child: Text("Cancel"),),
              ElevatedButton(onPressed: (){
                addTransection(viewModel.id);
                viewModel.updateView("customer");
              },  child: Text("Add"),),
            ],
          )
        ],
      ),
    );
  }
}