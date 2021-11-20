import 'package:drawer/views.dart';
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
  int _viewIndex = 2;

  changeView(int index){
    setState(() {
      _viewIndex = index;
    });
  }

  List views = [
    HomeView(),
    ContactView(),
    MessageView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer App"),
      ),
      drawer: Drawer(
        child: MyDrawer(changeView),
      ),
      body: views[_viewIndex],
    );
  }
}
class MyDrawer extends StatelessWidget {
  late var changeView ;

  MyDrawer(this.changeView){}

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
          ListTile(
            title: DrawerItemCard(icon: Icon(Icons.home), title: "Home",),
            onTap: ()=>{changeView(0)},
          ),
          ListTile(
            title: DrawerItemCard(icon: Icon(Icons.contact_phone), title: "Contact",),
            onTap: ()=>{changeView(1)},
          ),
          ListTile(
            title: DrawerItemCard(icon: Icon(Icons.message), title: "Message",),
            onTap: ()=>{changeView(2)},
          )
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