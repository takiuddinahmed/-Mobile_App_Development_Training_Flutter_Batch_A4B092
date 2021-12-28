import 'package:flutter/material.dart';

class ShodhBakiView extends StatelessWidget {
  const ShodhBakiView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Card(
        child: ListTile(
          title: Text("27/12/21 - BDT. 500 "),
          subtitle: Text("This is an note for shodh baki"),
          trailing: Icon(Icons.delete, color: Colors.red,),
          ),
          
      )
      
    );
  }
}