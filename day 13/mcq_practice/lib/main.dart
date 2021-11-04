import 'package:flutter/material.dart';
main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Mcq Practice",
      home: Scaffold(
        appBar: AppBar(title: Text("MCQ Practice"),),
        body: MCQ()
        ),
        
    );
  }
}
class MCQ extends StatefulWidget {
  @override
  _MCQState createState() => _MCQState();
}
class _MCQState extends State<MCQ> {
  int viewIndex = 2;
  var ques = [
    {"title":"What is the score of BD cricket in last match?", "options":[210,50,84,80], "correct":84},
    {"title":"Who is coach of BD cricket?", "options":["Rasel","Mehedi","Mostafiz","Akhi"], "correct":"Rashel"},
    {"title":"What is natinal flower of BD?", "options":["Golap","Shapla","Joba","Jui"], "correct":"Shapla"},
    {"title":"Next Prime Minister BD?", "options":["Rezia","Afrin","Reya","No other than Sheikh Hasina"], "correct":"No other than Sheikh Hasina"},
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card (
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${viewIndex + 1} . ${ques[viewIndex]["title"]}"),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: Text("a) ${(ques[viewIndex]["options"] as List)[0]}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: Text("b) ${(ques[viewIndex]["options"] as List)[1]}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: Text("c) ${(ques[viewIndex]["options"] as List)[2]}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10, top:10),
                    child: Text("d) ${(ques[viewIndex]["options"] as List)[3]}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15),
                    child: Text("Correct Answer: ${ques[viewIndex]["correct"]}"),
                  ),
                ],
              ),
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: ()=>{}, 
                child: Text("Prev")),
              ElevatedButton(
                onPressed: ()=>{}, 
                child: Text("Show")),
              ElevatedButton(
                onPressed: ()=>{}, 
                child: Text("Next")),
            ],
          )
        ],
      ),
    );
  }
}