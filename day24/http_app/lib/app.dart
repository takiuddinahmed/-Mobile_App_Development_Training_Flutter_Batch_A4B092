import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_app/services/httpServices.dart';

class App extends StatefulWidget {
  const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  String data = "fetching data....";
  @override
  void initState(){
    super.initState();
    readData();
  }

  readData() async {
    String d = await HttpService.getData();
    setState(() {
      data = d;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("$data")
    );
  }
}