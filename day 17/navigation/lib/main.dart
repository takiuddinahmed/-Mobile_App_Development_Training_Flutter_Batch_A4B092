import 'package:flutter/material.dart';
import 'package:navigation/views.dart';
main()=>runApp(MyApp());


class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 1;
  List views = [
    HomeView(),
    ContactView(),
    MessageView()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text('Navigation'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone),
              title: Text('Contact')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text('Message')
            ),
          ],
          onTap: (int index){
            setState(() {
              _selectedIndex = index;
            });
          }
        ),
        body: views[_selectedIndex],
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "navigation",
//       home: DefaultTabController(
//         initialIndex: 0,
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             leading: Icon(Icons.home),
//             title: Text("Navigation"),
//             bottom: TabBar(
//               tabs: [
//                 Tab(child: Text("Home"),),
//                 Tab(child: Text("Contact"),),
//                 Tab(child: Text("Message"),)
//               ],
//             ),
//           ),
//           body: TabBarView(children: [
//             HomeView(),
//             ContactView(),
//             MessageView()
//           ]),
//         ),
//       )
//     );
//   }
// }

