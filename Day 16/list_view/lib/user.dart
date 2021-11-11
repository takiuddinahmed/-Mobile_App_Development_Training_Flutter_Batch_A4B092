
class User {
  String name = "";
  String contactNumber = "";
  String mailAdress = "";
  String image = "";

  // User (String _name, String _contactNumber, String _mail, String _image){
  //   name = _name;
  //   contactNumber = _contactNumber;
  //   mailAdress = _mail;
  //   image = _image;
  // }

  User (this.name, this.contactNumber, this.mailAdress, this.image){}
}

var users = [
  User("Mr A", "+880111111111111","aa@mail.com","image.jfif"),
  User("Mr B", "+880111111111111","aa@mail.com","image.jfif"),
  User("Mr C", "+880111111111111","aa@mail.com","image.jfif"),
  User("Mr D", "+880111111111111","aa@mail.com","image.jfif"),
];