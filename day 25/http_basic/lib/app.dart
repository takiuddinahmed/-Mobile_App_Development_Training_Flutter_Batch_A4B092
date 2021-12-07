import 'package:flutter/material.dart';
import 'package:http_basic/services/httpService.dart';

class App extends StatefulWidget {
  const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HttpService.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Http Basic"),
    );
  }
}