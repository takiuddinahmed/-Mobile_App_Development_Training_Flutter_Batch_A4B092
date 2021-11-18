import 'package:flutter/material.dart';
import 'package:navigation/views.dart';
main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "navigation",
      home: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.home),
            title: Text("Navigation"),
            bottom: TabBar(
              tabs: [
                Tab(child: Text("Home"),),
                Tab(child: Text("Contact"),),
                Tab(child: Text("Message"),)
              ],
            ),
          ),
          body: TabBarView(children: [
            HomeView(),
            ContactView(),
            MessageView()
          ]),
        ),
      )
    );
  }
}