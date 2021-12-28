
import 'package:flutter/material.dart';
import 'package:hisab_nikash/provider/view.dart';
import 'package:hisab_nikash/views/shodhBaki.dart';
import 'package:provider/provider.dart';

class DenaPawnaView extends StatelessWidget {
  const DenaPawnaView({ Key? key }) : super(key: key);

  Widget shodhViews (){
    return Column(
      children: [
        ShodhBakiView(),
        ShodhBakiView(),
        ShodhBakiView(),
        ShodhBakiView(),
      ],
    );
  }
  Widget bakiViews (){
    return Column(
      children: [
        ShodhBakiView(),
        ShodhBakiView(),
        ShodhBakiView(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(
                child: Text("শোধ", style: TextStyle(color: Colors.black),),
              ),
              Tab(
                child: Text("বাকি", style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
          Container(
            height: 600,
            child: TabBarView(
              children: [
                shodhViews(),
                bakiViews()
              ]),
          )
        ],
      ));
  }
}