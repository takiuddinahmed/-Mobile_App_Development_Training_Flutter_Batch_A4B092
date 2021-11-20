import 'package:flutter/material.dart';
main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Drawer",
      home: HomeApp()
    );
  }
}
class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer App"),
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
    );
  }
}
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:50, left: 10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top:50, bottom: 10),
            child: CircleAvatar(
              child: Icon(Icons.person, size: 40,),
            ),
          ),
          Text("Engg. Mr. Maznu Sir", style: TextStyle( fontSize: 20),),
          Divider( thickness: 1,),
          DrawerItemCard(icon: Icon(Icons.home), title: "Home",),
          DrawerItemCard(icon: Icon(Icons.contact_phone), title: "Contact",),
          DrawerItemCard(icon: Icon(Icons.message), title: "Message",),
      ],),
    );
  }
}

class DrawerItemCard extends StatelessWidget {
  late Icon icon;
  late String title;

  DrawerItemCard({required this.icon, required this.title}){}

  @override
  Widget build(BuildContext context) {
    return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  
                  icon,
                  SizedBox(width: 20,),
                  Text("$title", style: TextStyle(fontSize: 20),)
                ],
              ),
            ),
          );
  }
}