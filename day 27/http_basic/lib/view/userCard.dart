
import 'package:flutter/material.dart';
import 'package:http_basic/models/user.dart';

class UserCard extends StatelessWidget {
  final User user;
  UserCard(this.user){}

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 120,
        width: 250,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(child: Image.network(user.avatar),),
            Text("First Name : ${user.first_name}"),
            Text("Last Name : ${user.last_name}"),
            Text("Email : ${user.email}"),
          ],
        ),),
    );
  }
}