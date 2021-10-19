class Circle{
  int radius = 1;

  Circle(int r){
    radius = r;
  }

  double area(){
    return 3.1416 * radius * radius;
  }
}

void main(){
  var c = new Circle(8);
  var d = new Circle(9);
  var cArea = c.area();
  var dArea = d.area();
  if(cArea > dArea){
    print("C is large");
  }
  else if (dArea > cArea) {
    print("d is large");
  }
  else {
    print("Both are equal");
  }
}