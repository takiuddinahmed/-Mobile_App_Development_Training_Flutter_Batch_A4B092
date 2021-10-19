class Student{
  String? name;
  int? roll;
  int? age;

  Student(String n, int r, int a){
    name = n;
    roll = r;
    age = a;
  }

  void sayDetails(){
    print("Hey, I'm $name, $age years old and my roll is $roll");
  }
}

void main(){
  var std = new Student("Abdur Rahim", 234, 20);
  std.sayDetails();
}