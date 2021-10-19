class Man{
  String? name;
  int? age;
  Man(String n, int a){
    name = n;
    age = a;
  }
  void sayName(){
    print("Hey! I'm $name");
  }
}
class Student extends Man {
  int? roll;

  Student(String n, int a, int r):super(n,a){
    roll = r;
  }

  void sayRoll(){
    print("Hey! my roll is $roll");
  }
}
void main() {
  var std = new Student("Chatro",234,890);
  std.sayName();
  std.sayRoll();
}