import 'package:basic_crud/models/post.dart';
import 'package:flutter/material.dart';


class PostsView extends StatelessWidget {
  late List<Post> postList;
  PostsView({required this.postList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: postList.length,
      itemBuilder: (context, index){
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(postList[index].title),
              subtitle: Text(postList[index].body),
            ),
          ),
        );
      });
  }
}