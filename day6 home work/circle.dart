class Circle{
  int radius = 1;

  Circle(int r){
    radius = r;
  }

  double area(){
    double a = 3.1416 * radius * radius;
    return a;
  }
}

void main() {
  var c = new Circle(7);
  print("The area is ${c.area()}");
}