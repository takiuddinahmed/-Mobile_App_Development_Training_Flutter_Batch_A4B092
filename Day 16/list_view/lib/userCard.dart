import 'package:flutter/material.dart';
import 'package:list_view/user.dart';


class UserCards extends StatelessWidget {

  List<Widget> _usersShow(){
    return users.map((u) => _viewUser(u)).toList();
  }

  Widget _viewUser (User u){
    return Container(
      height:120,
      width: 120,
      child: Card(
          child: Column( 
            children: [
              CircleAvatar(
                child: Image.asset("assets/image.jfif"),
              ),
              Text(u.name),
              // Text(u.contactNumber),
              Text(u.mailAdress)
            ],
          ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
        direction: Axis.horizontal,
        spacing: 10,
        children: _usersShow(),
      );
    
  }
}