import 'package:flutter/material.dart';
main()=>runApp(Home());
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int count = 0;
  bool dark = true;
  void decrement (){
    setState(() {
      count --;
    });
  }
  void change(){
    setState(() {
      dark = !dark;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "state",
      home: Scaffold( 
        appBar: AppBar(title: Text("State"),),
        backgroundColor: dark == true ? Colors.black87 : Colors.white,
        body: Center(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You clicked $count times", 
              style: TextStyle( fontSize: 28, color: dark == true ? Colors.white : Colors.black,),),
            Text("Dark Mode = $dark", 
              style: TextStyle( fontSize: 28, color: dark == true ? Colors.white : Colors.black,),),
            ElevatedButton(
              onPressed: decrement , 
              child: Text("click me",)
              ),
            ElevatedButton(onPressed: change, child: Text("Change"))
          ],
        ),),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              count ++;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.pinkAccent,
        ),
      )
    );
  }
}