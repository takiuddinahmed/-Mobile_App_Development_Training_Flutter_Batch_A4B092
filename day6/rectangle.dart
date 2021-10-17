class Rectangle{
  int length = 1;
  int width = 1;

  int area (){
    return length * width;
  }
  
  Rectangle(int l, int w){
    length = l;
    width = w;
  }
}
void main(){
  var rec = new Rectangle(10,8);

  rec.width = 8;
  rec.length = 10;

  int area = rec.area();

  print("Area is $area");
}