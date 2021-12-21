
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// stream 
class AllContactView extends StatelessWidget {
  late Function onEdit;
  AllContactView({required this.onEdit}){}
  var contactCollection = FirebaseFirestore.instance.collection("contacts");
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: contactCollection.snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
        if (snapshot.hasData){
          var data = snapshot.data!.docs;
          var contactList = data.map((contact) { 
            var c = contact.data() as Map<String, dynamic>;
              return SingleContactView(name:c["name"], email:c["email"], id: contact.id, onEdit: onEdit,);
            }).toList();
          return ListView(
            children: contactList,
          );
        }

        return Center(child: CircularProgressIndicator(),);
      },
    );
  }
}

// // one time data read
// class AllContactView extends StatelessWidget {
//   var contactCollection = FirebaseFirestore.instance.collection("contacts");
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: contactCollection.get(),
//       builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
//         if (snapshot.hasData){
//           var data = snapshot.data!.docs;
//           var contactList = data.map((contact) { 
//             var c = contact.data() as Map<String, dynamic>;
//               return SingleContactView(name:c["name"], email:c["email"]);
//             }).toList();
//           return ListView(
//             children: contactList,
//           );
//         }

//         return Center(child: CircularProgressIndicator(),);
//       },
//     );
//   }
// }

class SingleContactView extends StatelessWidget {
  late String name;
  late String email;
  late String id;
  late Function onEdit;
  SingleContactView({this.name = "", this.email = "", required this.id, required this.onEdit}){}

  delete(String id){
    FirebaseFirestore.instance.collection("contacts").doc(id).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Card(
        child: ListTile(
          title: Text("$name"),
          subtitle: Text("$email"),
          trailing: Container(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: ()=>{onEdit(id)},
                  icon: Icon(Icons.edit, color: Colors.blueAccent,)
                  ),
                IconButton(
                  onPressed: ()=>{delete(id)},
                  icon: Icon(Icons.delete, color: Colors.redAccent,)
                  ),
              ],
            ),
          ),
        )
        ),
      );
  }
}