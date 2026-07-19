import 'dart:math';
void main(){
  var a = 2;
  var b = 3;

  print(max(a, b));
  print(maxCustom(a, b));
}

int maxCustom(int a, int b) {

  if (a > b){
    return a;
  }
  return b;
}
