
import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget{

  @override 
  Widget build(BuildContext c){
    return MaterialApp(
      title: "Layout",
      home: Scaffold(
        appBar: AppBar(title: Text("My App"),),
        body: Containers(),
       )
    );
  }
}

class Containers extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      // margin: EdgeInsets.all(20),
      // margin: EdgeInsets.fromLTRB(10,20,30,40),
      margin: EdgeInsets.only(left:20,top:40),
      padding: EdgeInsets.all(20),
      // width: 300,
      // height: 300,
      child: Text("Padding Text"),
    );
  }
}

class Columns extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column (
      // mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.end,
      // mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      // crossAxisAlignment: CrossAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.end,
      // crossAxisAlignment: CrossAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.red,
          width: 200,
          height: 100,
          child: Text("Hello Duniya!!😜"),
        ),
        Container(
          color: Colors.blue,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.green,
          width: 300,
          height: 300,
          child: Text("########")
          
        ),
      ],
    );
  }
}

class ImageWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Column (
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        // crossAxisAlignment: CrossAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.network(
        "https://images.unsplash.com/photo-1633054347700-610bec582e13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        width: 100,
        height: 300,
        ),
          Image.network(
        "https://images.unsplash.com/photo-1633054347700-610bec582e13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        width: 100,
        height: 200,
        ),
          Image.asset(
            "assets/car.jpg",
            width: 100,
            height: 100,
            // color: Colors.blue,
            )
      ],);
    
  }
}