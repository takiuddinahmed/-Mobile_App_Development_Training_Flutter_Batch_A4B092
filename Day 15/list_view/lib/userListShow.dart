
import 'package:flutter/material.dart';
import 'package:list_view/user.dart';

class UserListShow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index){
          return Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ListTile(
                title: Text(users[index].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(users[index].contactNumber),
                    Text(users[index].mailAdress),
                  ],
                  
                ),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  radius: 20,
                  child: Image.asset("assets/image.jfif"),),
               )
              ,
              ),);
        },
      ),
    );
  }
}