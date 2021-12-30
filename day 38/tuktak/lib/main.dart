import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuktak/models/count.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>Count(),)
      ],
      child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Count count = Provider.of<Count>(context);
    return MaterialApp(
      title: "TukTak App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: (){count.setCount(count.count+1);},
          ),
        appBar: AppBar(
          leading: const Icon(Icons.umbrella),
          title: const Text("TukTak"),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.delete)),
          ],
          ),
          body: Home(),
      )
    );
  }
}

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Count count = Provider.of<Count>(context);
    return Center(
      child: Text("Hello World for ${count.count} times"),
    );
  }
}

