import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hisab_nikash/provider/view.dart';
import 'package:provider/provider.dart';

class ShodhBakiView extends StatelessWidget {
  String date = "";
  int amount = 0;
  String note = "";
  String id = "";

  ShodhBakiView({required this.date, required this.amount, this.note = "", required this.id}){}

  @override
  Widget build(BuildContext context) {
    ViewModel viewModel = Provider.of<ViewModel>(context);
    return Container(
      padding: EdgeInsets.all(5),
      child: Card(
        child: ListTile(
          title: Text("$date - BDT. $amount "),
          subtitle: Text("$note"),
          trailing: IconButton(
            icon: Icon(Icons.delete), 
            color: Colors.red,
            onPressed: (){
              FirebaseFirestore
                .instance
                .collection("user@user.com")
                .doc(viewModel.id)
                .collection("transections")
                .doc(id)
                  .delete();
            },),
          ),
          
      )
      
    );
  }
}