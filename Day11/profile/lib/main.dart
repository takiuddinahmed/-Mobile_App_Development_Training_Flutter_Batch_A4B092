import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "profile",
      home: Scaffold(
        appBar: AppBar(title: Text("Profile"),),
        body: Profile()
        ),
    );
  }
}

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.network("https://images.unsplash.com/photo-1586297135537-94bc9ba060aa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=880&q=80",
          width: 100,
          height: 150,
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 50,),
              Text("Name" , style: TextStyle(fontSize: 28) ),
              SizedBox(width: 20,),
              Text(":", style: TextStyle(fontSize: 28) ),
              SizedBox(width: 20,),
              Text("Angel Priya", style: TextStyle(fontSize: 28) )
            ],),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 50,),
              Text("Email" , style: TextStyle(fontSize: 28) ),
              SizedBox(width: 20,),
              Text(":", style: TextStyle(fontSize: 28) ),
              SizedBox(width: 20,),
              Text("anelpa@jka.com", style: TextStyle(fontSize: 28) )
            ],),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 50,),
              Text("DOB" , style: TextStyle(fontSize: 28) ),
              SizedBox(width: 20,),
              Text(":", style: TextStyle(fontSize: 28) ),
              SizedBox(width: 20,),
              Text("31 April", style: TextStyle(fontSize: 28) )
            ],),
          
        ],
      ), 
    );
  }
}