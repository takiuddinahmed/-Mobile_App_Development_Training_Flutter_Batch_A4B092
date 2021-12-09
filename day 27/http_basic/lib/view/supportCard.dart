import 'package:flutter/material.dart';
import 'package:http_basic/models/support.dart';

class SupportCard extends StatelessWidget {
  final Support support;
  SupportCard(this.support){}

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
            Text("Url : ${support.url}"),
            Text("Text : ${support.text}"),
          ],
        ),),
    );
  }
}