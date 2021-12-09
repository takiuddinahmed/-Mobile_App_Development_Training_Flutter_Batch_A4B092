import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class SohojApp extends StatefulWidget {


  @override
  _SohojAppState createState() => _SohojAppState();
}

class _SohojAppState extends State<SohojApp> {
  String firstName = "";
  String lastName = "";
  String email = "";
  String avatarImage = "";
  bool dataLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  loadData()async {
    var res = await http.get(Uri.https("reqres.in","/api/users/3"));
    var json = jsonDecode(res.body);
    var data = json["data"];

    setState(() {
      firstName = data["first_name"];
      lastName = data["last_name"];
      email = data["email"];
      avatarImage = data["avatar"];
      dataLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return dataLoaded ? Column(
      children: [
        CircleAvatar(child: Image.network(avatarImage),),
        Text("First name : $firstName"),
        Text("Last name : $lastName"),
        Text("Email : $email")
        
      ],
    ) : CircularProgressIndicator();
  }
}

