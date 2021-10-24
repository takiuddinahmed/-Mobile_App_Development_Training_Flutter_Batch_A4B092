void main(){
  // funcPositional(9,8,6,8);
  funcNamed(9, 8,g:1,d:5);
}

/// postional optional parameter
void funcPositional(int a,int b,[int c = 1, int d = 2, int e = 3, int f= 4,int g =5]){
  print("a= $a b= $b c=$c d= $d e= $e f= $f g= $g");
}
/// named optional parameter
void funcNamed(int a,int b,{int c = 1, int d = 2, int e = 3, int f= 4,int g =5}){
  print("a= $a b= $b c=$c d= $d e= $e f= $f g= $g");
}