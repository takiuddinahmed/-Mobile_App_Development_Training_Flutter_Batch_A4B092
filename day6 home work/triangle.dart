class Triangle{
  int base = 1;
  int height = 1;

  Triangle(int b, int h){
    base = b;
    height = h;
  }

  double area(){
    double a = 0.5 * base * height;
    return a;
  }
}

void main() {
  var t = new Triangle(7,8);
  print("The area is ${t.area()}");
}