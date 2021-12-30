import 'package:flutter/material.dart';


class MyForm extends StatefulWidget {
  const MyForm({ Key? key }) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  var globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Form(
        key: globalKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
              validator: (value){
                if(value == null || value!.length == 0){
                  return "Value empty";
                }
                else if (value!.length <6) {
                  return "Too short value";
                }
                else if (!value!.contains('@')) {
                  return "Email not valid";
                }
                return null;
              },
            ),
            ElevatedButton(onPressed: (){
              if(globalKey.currentState!.validate()){
                print("all okey");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("All OK"))
                );
                showDialog(
                  context: context, 
                  builder: (context){
                    return AlertDialog(
                      title: Text("Alert!!!"),
                      content: CircularProgressIndicator(),
                      actions: [
                        ElevatedButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, child: Text("Cancel")),
                        ElevatedButton(onPressed: (){}, child: Text("Confirm"))
                      ]
                    );
                  });
              }
            }, child: Text("Submit"))
          ],)),
    );
  }
}