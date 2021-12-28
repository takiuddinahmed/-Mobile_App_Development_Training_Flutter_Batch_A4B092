import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hisab_nikash/provider/view.dart';
import 'package:provider/provider.dart';

class CustomerListView extends StatelessWidget {

  var customerRef = FirebaseFirestore.instance.collection("user@user.com");

  @override
  Widget build(BuildContext context) {
    ViewModel viewModel = Provider.of<ViewModel>(context,listen: false);
    return FutureBuilder<QuerySnapshot>(
      future: customerRef.get(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if( snapshot.hasData ){
          List<Map<String, dynamic>> customerList =  snapshot.data!.docs.map((doc){
            return {"name":doc["name"] ?? ""};
          }).toList();

          List<Widget> customerListWidget = customerList.map((doc){
            return CustomerView(name: doc["name"],);
          }).toList();

          return Container(
            color: Colors.grey[300],
            width: 400,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Customer List", style: TextStyle(fontSize: 30),),
                      ElevatedButton.icon(onPressed: (){
                        viewModel.updateView("add_customer");
                      }, icon: Icon(Icons.add), label: Text("Add"))
                    ],
                  ),
                  Column(
                    children: customerListWidget,
                  )
                  
                ],
              ),
            ),
          );
        }
        else if (snapshot.hasError){
          return Center(child: Text(snapshot.error.toString()),);
        }
        return Center(child: CircularProgressIndicator(),);
      }
    );
  }
}

class CustomerView extends StatelessWidget {
  String name = "";

  CustomerView({required this.name}){}

  @override
  Widget build(BuildContext context) {
    ViewModel viewModel = Provider.of<ViewModel>(context, listen: false);
    return Container(
      padding: EdgeInsets.all(5),
      child: Card(
        child: ListTile(
          title: Text(name),
          trailing: Icon(Icons.delete, color: Colors.red,),
          onTap: (){
            viewModel.updateView("customer");
          }
          ),
      )
      
    );
  }
}