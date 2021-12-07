import 'package:http/http.dart' as http;

class HttpService {

  static Future<String> getData () async {
    var url = Uri.https("jsonplaceholder.typicode.com","/albums/1");
    var res = await http.get(url);
    print(res.statusCode);
    print(res.body);
    return res.body;
  }
}