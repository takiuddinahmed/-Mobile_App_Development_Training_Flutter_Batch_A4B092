import 'dart:convert';

import 'package:basic_crud/models/post.dart';
import 'package:basic_crud/views/post_form.dart';
import 'package:basic_crud/views/posts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class App extends StatefulWidget {
  const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List <Post> postList = [];
  
  String viewText = "posts";

  // form section
  var titleController = TextEditingController();
  var bodyController = TextEditingController();

  back(){
    setState(() {
      viewText = "posts";
    });
  }

  submit() async {
    var newPost = new Post(
      title: titleController.text,
      body: bodyController.text,
      userId: 1
    );

    postList.add(newPost);
    titleController.clear();
    bodyController.clear();
    back();

    // var res = await http.post(
    //   Uri.https("jsonplaceholder.typicode.com", "/posts"),
    //   body: newPost.toJson(),
    //   );
    // print(res.statusCode);

  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadAllPostData();
  }

  loadAllPostData() async {
    var res = await http.get(Uri.https("jsonplaceholder.typicode.com", "/posts"));
    List jsonList = jsonDecode(res.body);
    List<Post> _postList =  jsonList.map((json) => Post.fromJson(json)).toList();
    setState(() {
      postList = _postList;
    });
  }

  Widget view(){
    if (viewText == "posts"){
      return PostsView(postList: postList,);
    }
    else if (viewText == "form"){
      return PostForm(
        titleController: titleController,
        bodyController: bodyController,
        back: back,
        submit: submit,
      );
    }
    return PostsView(postList: postList,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Basic CRUD"),),
        body: view(),
        floatingActionButton: FloatingActionButton(
          onPressed: ()=>{
            setState((){
              viewText = "form";
            })
          },
          child: Icon(Icons.add),),
      );
  }
}