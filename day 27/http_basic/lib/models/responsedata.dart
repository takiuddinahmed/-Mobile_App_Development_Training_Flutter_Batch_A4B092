
class ResponseData {
  bool isError = false;
  String error = "";
  dynamic data = {};

  ResponseData({this.error = "", required this.data}){
    this.isError = this.error.length == 0 ? false : true;
  }
}