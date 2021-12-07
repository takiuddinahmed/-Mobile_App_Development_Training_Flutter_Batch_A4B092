import 'package:http/http.dart' as http;

class HttpService {

  static getData () async {
    // var url = Uri.https("jsonplaceholder.typicode.com","/albums/1");
    var url = Uri.https("reqres.in","/api/users/2");
    var res =  await http.get(url);
    print(res.statusCode);
    print(res.body);
  }
}