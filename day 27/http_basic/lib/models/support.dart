
class Support {
  String url = "";
  String text = "";

  Support({this.url = "", this.text = ""}){}

  factory Support.FromJson(Map<String, dynamic> json){
    return Support (url: json["url"], text: json["text"]);
  }
}