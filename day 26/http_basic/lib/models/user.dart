
class User{
  late int id;
  late String first_name;
  late String last_name;
  late String email;
  late String avatar;

  User({required this.id, required this.first_name, required this.last_name, required this.email, required this.avatar}){}

  factory User.fromJson(Map<String, dynamic> json){
    return User(id: json["id"], first_name: json["first_name"], 
    last_name: json["last_name"], email: json["email"], avatar: json["avatar"]);
  }
}