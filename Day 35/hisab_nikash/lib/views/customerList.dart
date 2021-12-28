import 'package:flutter/material.dart';
import 'package:hisab_nikash/provider/view.dart';
import 'package:provider/provider.dart';

class CustomerListView extends StatelessWidget {
  const CustomerListView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Customer List", textAlign: TextAlign.center, style: TextStyle(fontSize: 30),),
            CustomerView(),
            CustomerView(),
            CustomerView(),
            CustomerView(),
            CustomerView(),
            CustomerView(),
            CustomerView(),
            CustomerView(),
            CustomerView(),
            CustomerView(),
            CustomerView(),
            CustomerView(),
            CustomerView(),
            CustomerView(),
            CustomerView(),
            CustomerView(),
            
          ],
        ),
      ),
    );
  }
}

class CustomerView extends StatelessWidget {
  const CustomerView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ViewModel viewModel = Provider.of<ViewModel>(context, listen: false);
    return Container(
      padding: EdgeInsets.all(5),
      child: Card(
        child: ListTile(
          title: Text("Customer"),
          onTap: (){
            viewModel.updateView("customer");
          }
          ),
      )
      
    );
  }
}