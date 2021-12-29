
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hisab_nikash/provider/view.dart';
import 'package:hisab_nikash/views/shodhBaki.dart';
import 'package:provider/provider.dart';

class DenaPawnaView extends StatefulWidget {
  String id = "";
  DenaPawnaView({ required this.id}){}

  @override
  State<DenaPawnaView> createState() => _DenaPawnaViewState(id: id);
}

class _DenaPawnaViewState extends State<DenaPawnaView> {
  String id = "";
  int baki = 0;
  int shodh = 0;
  _DenaPawnaViewState({ required this.id}){}

  List<Map<String,dynamic>> data = [];
  var collection = FirebaseFirestore
                    .instance
                    .collection("user@user.com");

  @override
  initState(){
    super.initState();
    fetchData();
  }

  fetchData()async{
    var transections = await collection.doc(id).collection("transections").get();
    var _list = transections.docs.map((value){
      var _value = value.data();
      return {
        "date": _value["date"],
        "amount": _value["amount"],
        "note": _value["note"],
        "type": _value["type"],
        "id": value.id
      };
    }).toList();

    int _baki = 0;
    int _shodh = 0;

    _list.forEach((value){
      if(value["type"] == "shodh"){
        _shodh += value["amount"] as int;
      }
      else if(value["type"] == "baki"){
        _baki += value["amount"] as int;
      }
    });

    setState(() {
      data = _list;
      shodh = _shodh;
      baki = _baki;
    });
  }

  List<Map<String,dynamic>> filter (List<Map<String,dynamic>> data, String type){
    return data.where((value) => value["type"] == type ).toList();
  }

  List<Widget> convertToWidgetList(List<Map<String,dynamic>> data, String type){
    var filteredData = filter(data, type);
    return filteredData.map((value){
      return ShodhBakiView(
        date : value["date"] ?? "" ,
        amount: value["amount"] ?? "",
        note: value["note"] ?? "",
        id: value["id"] ?? ""
      );
    }).toList();
  }


  Widget shodhViews (){
    return Column(
      children: convertToWidgetList(data , "shodh"),
    );
  }

  Widget bakiViews (){
    return Column(
      children: convertToWidgetList(data, "baki"),
    );
  }

  String getStatus(){
    int total = shodh - baki;
    if(total<0){
      return "Baki : BDT ${-1 * total}";
    }
    else if (total > 0){
      return "Pabe : BDT $total";
    }
    else {
      return "Close";
    }
  }

  @override
  Widget build(BuildContext context) {
    ViewModel viewModel = Provider.of<ViewModel>(context);
    return DefaultTabController(
      length: 2, 
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("${getStatus()}", style: TextStyle(fontSize: 30),),
                  ElevatedButton.icon(onPressed: (){
                    viewModel.updateView("add_transection");
                  }, icon: Icon(Icons.add), label: Text("Add"))
                ],
              ),
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
              height: data.length*100,
              child: TabBarView(
                children: [
                  shodhViews(),
                  bakiViews()
                ]),
            )
          ],
        ),
      ));
  }
}