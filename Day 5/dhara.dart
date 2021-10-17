// 1 + 2 + 3 + ....... + 100 = ?
void main(){
  int sum = 0;
  for (int i=0;i<101;i++){
    sum = sum + i;
  }

  print(sum);
}