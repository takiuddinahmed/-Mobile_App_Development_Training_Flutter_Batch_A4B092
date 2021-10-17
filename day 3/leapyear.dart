void main(){
  var year = 2020;

  if (year % 400 == 0){
    print("${year} is leap year");
  }
  else if( (year % 4 == 0) & (year % 100 !=0)){
    print("${year} is leap year");
  }
  else{
    print("${year} is not leap year");
  }
}