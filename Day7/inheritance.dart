class Man{
  String name = "default";
  int? age;
  Man(String name, int _age){
    this.name = name;
    this.age = _age;
  }
  void sayName(){
    print("Hey! I'm $name");
  }
  void introduce(){
    print("Hey! I'm $name, $age years old");
  }

  // setter 
  void setName(String _name){
    name = _name;
  }
  // getter
  String getName(){
    return name;
  }

}
class Student extends Man {
  int? roll;
  Student(String _name, int _age, int _roll):super(_name,_age){
    roll = _roll;
  }
  void sayRoll(){
    print("Hey! my roll is $roll");
  }
  @override
  void introduce(){
    print("Hey! I'm $name, $age years old and my roll is $roll");
  }
}
void main() {
  var std = new Student("Chatro",234,890);
  // std.name = "Mr. Chatro";
  std.setName("Mr. Chatro");
  print(std.getName());
  std.introduce();
}


// getter setter <- get, set