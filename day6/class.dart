class Man{
  String? name;
  int? height;

  void say(){
    print("Hi, I'm $name");
  }
}

void main(){
  Man jodu = new Man();
  jodu.name = "Jodu";
  jodu.height = 8;
  print(jodu.name);
  jodu.say();
}