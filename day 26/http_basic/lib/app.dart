import 'package:flutter/material.dart';
import 'package:http_basic/models/user.dart';
import 'package:http_basic/services/httpService.dart';
import 'package:http_basic/view/userCard.dart';

class App extends StatefulWidget {
  const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  late User user;
  bool dataLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async{
    User _data = await HttpService.getData();
    setState(() {
      user = _data;
      dataLoaded = true;
    });
    print(dataLoaded);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: dataLoaded ? UserCard(user) : Text("Data fetching"),
    );
  }
}