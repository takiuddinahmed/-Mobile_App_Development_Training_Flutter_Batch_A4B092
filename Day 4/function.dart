void main(){
  showName();
  show("Mehedi Hasan",1420);
  String name = getName();
  print("The another name is $name");
  int value = square(16);
  print("The square of 16 is $value");
  print("The sum of 1 , 2, 3 is ${sum(1,2,3)}");
}
void showName(){
  print("My name is Md. Takiuddin");
}
void show(String name, int studentId){
  print("The name is ${name} & student id is $studentId");
}
String getName(){
  return "Mostafizur Rahman";
}
int square(int n){
  int result = n * n;
  return result;
}
int sum(int a, int b, int c){
  int result = a + b + c;
  return result;
}
