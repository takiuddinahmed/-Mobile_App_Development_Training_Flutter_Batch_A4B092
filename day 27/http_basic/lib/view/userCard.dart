
import 'package:flutter/material.dart';
import 'package:http_basic/models/user.dart';

class UserCard extends StatelessWidget {
  final User user;
  UserCard(this.user){}

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
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