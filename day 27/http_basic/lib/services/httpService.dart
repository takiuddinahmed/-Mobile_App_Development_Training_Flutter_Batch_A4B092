import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http_basic/models/user.dart';

class HttpService {

  static Future<User> getData () async {
    var url = Uri.https("reqres.in","/api/users/2");
    var res =  await http.get(url);
    var jsonData = jsonDecode(res.body);
    User user = User.fromJson(jsonData["data"]);
    // print("")
    return user;

    // if(res.statusCode == 200){
    //   return user;
    // }
    // return "Failed to load with status code ${res.statusCode}";
    // return User(id: "", first_name: first_name, last_name: last_name, email: email, avatar: avatar)
  }
}