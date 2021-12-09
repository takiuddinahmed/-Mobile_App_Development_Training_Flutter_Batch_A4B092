import 'package:flutter/material.dart';
import 'package:http_basic/models/responsedata.dart';
import 'package:http_basic/models/support.dart';
import 'package:http_basic/models/user.dart';
import 'package:http_basic/services/httpService.dart';
import 'package:http_basic/view/supportCard.dart';
import 'package:http_basic/view/userCard.dart';

class App extends StatefulWidget {
  const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  late User user;
  late Support support;
  bool dataLoaded = false;
  String errorText = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async{
    ResponseData _data = await HttpService.getSingleUserData(3);
    // print(_data.data);
    if(_data.isError){
      setState(() {
        errorText = _data.error;
        dataLoaded = true;
      });
    }
    else {
      setState(() {
        user = User.fromJson(_data.data["data"]);
        support = Support.FromJson(_data.data["support"]);
        dataLoaded = true;
      });
    }
  }

  Widget _showUser (){
    if (dataLoaded == true){
      if( errorText.length == 0){
        return  Column(
          children: [
            UserCard(user),
            SupportCard(support)
          ],
        );
      }
      else {
        return Text(errorText);
      }
    }
    else {
      return CircularProgressIndicator();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: _showUser()
    );
  }
}