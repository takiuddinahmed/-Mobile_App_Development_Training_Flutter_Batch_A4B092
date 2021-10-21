void main(){
  int mark = 15;
  double m = mark/10; // m = 5.5
  int a = m.truncate(); // a = 5

  switch(a){
    case 10:
    case 9:
    case 8:
      print("A+");
      break;
    case 7:
      print("A");
      break;
    case 6:
      print("A-");
      break;
    case 5:
      print("B");
      break;
    case 4:
      print("C");
      break;
    case 3:
      print("D");
      break;
    case 2:
    case 1:
    case 0:
      print("Fine");
      break;
    
  }
}

/*
100 --> 10
80 - 89 ---> 8
90-99 ---> 9
50-59 --> 5


*/