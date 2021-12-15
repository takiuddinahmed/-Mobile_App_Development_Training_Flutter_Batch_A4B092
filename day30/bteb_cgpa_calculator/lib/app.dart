import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class App extends StatefulWidget {
  const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  double cgpa = 0.0;

  var firstSemController = TextEditingController();
  var secSemController = TextEditingController();
  var thirdSemController = TextEditingController();
  var forthSemController = TextEditingController();
  var fifthSemController = TextEditingController();
  var sixthSemController = TextEditingController();
  var seventhSemController = TextEditingController();
  var eighthSemController = TextEditingController();

  submit(){
    var firstSem = double.parse(firstSemController.text) * 0.05;
    var secSem = double.parse(secSemController.text) * 0.05;
    var thirdSem = double.parse(thirdSemController.text) * .05;
    var forthSem = double.parse(forthSemController.text) * 0.10;
    var fifthSem = double.parse(fifthSemController.text) * 0.15;
    var sixthSem = double.parse(sixthSemController.text) * 0.20;
    var seventhSem = double.parse(seventhSemController.text) * 0.25;
    var eighthSem = double.parse(eighthSemController.text) * 0.15;
    var _cgpa = firstSem + secSem + thirdSem + forthSem + fifthSem + sixthSem + seventhSem + eighthSem;
    setState(() {
      cgpa  = _cgpa;
    });
  }

  clear(){
    firstSemController.clear();
    secSemController.clear();
    thirdSemController.clear();
    forthSemController.clear();
    fifthSemController.clear();
    sixthSemController.clear();
    seventhSemController.clear();
    eighthSemController.clear();
    setState(() {
      cgpa = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(cgpa > 0 ? "CGPA IS $cgpa" : "", style: TextStyle(fontSize: 25),),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              controller: firstSemController,
              decoration: InputDecoration(
                labelText: "1st semester",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              controller: secSemController,
              decoration: InputDecoration(
                labelText: "2nd semester",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              controller: thirdSemController,
              decoration: InputDecoration(
                labelText: "3rd semester",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              controller: forthSemController,
              decoration: InputDecoration(
                labelText: "4th semester",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              controller: fifthSemController,
              decoration: InputDecoration(
                labelText: "5th semester",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              controller: sixthSemController,
              decoration: InputDecoration(
                labelText: "6th semester",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              controller: seventhSemController,
              decoration: InputDecoration(
                labelText: "7th semester",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              controller: eighthSemController,
              decoration: InputDecoration(
                labelText: "8th semester",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: ()=>{clear()}, child: Text("Clear")),
                ElevatedButton(onPressed: ()=>{submit()}, child: Text("Submit")),
              ]
            )
          ],
        ),
      ) ,
      
    );
  }
}