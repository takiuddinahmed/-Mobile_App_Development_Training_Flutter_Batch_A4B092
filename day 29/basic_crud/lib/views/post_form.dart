import 'package:flutter/material.dart';

class PostForm extends StatelessWidget {
  late TextEditingController titleController;
  late TextEditingController bodyController;
  late Function back;
  late Function submit;

  PostForm({required this.titleController, required this.bodyController, required this.back, required this.submit});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 480,
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Text("Create Post", textAlign: TextAlign.center, style: TextStyle(color: Colors.redAccent, fontSize: 25),),
          SizedBox(height: 10,),
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Title"
              ),
          ),
          SizedBox(height: 10,),
          TextField(
            controller: bodyController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Body"
              ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: ()=>{back()}, child: Text("Back")),
              ElevatedButton(onPressed: ()=>{submit()}, child: Text("Submit")),
            ],
          )
        ],
      ),
    );
  }
}