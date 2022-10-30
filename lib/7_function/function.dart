// ignore_for_file: avoid_print, unused_local_variable, prefer_function_declarations_over_variables

/*
Function có thể trả về nhiều giá trị với kiểu dữ liệu khác nhau 
(number: int, double; string: String; other: dynamic, Object, List, Set, Map và một vài hàm đặc biệt khác: Future)
Function có 2 cách biểu diễn: Simple và Lambda
Simple:
  VD:
  int a(){
    return 10;
  }
  int b(int a){
    return a+10;
  }
Lambda:
  VD:
  () => 10;
  (int a) => a+10;
Parameter truyền vào của 1 function có thể là 1 value hoặc 1 function(call back)
 */
int sum(int x, int y){ // Simple
  int z = x + y;
  return z;
}
String displayString(){
  return 'Hello i am Fox';
}
class A{
  A();
}
A getA(){
  return A();
}
// Lambda
double caculator() => 2.5; // Lambda
String displayName() => 'Fox'; 
int multiple(int x, int y) => x*y;
// ignore: use_function_type_syntax_for_parameters
// int specialFuction(int x, int y,int z){
//   int sum = x + y + getZ();
//   return sum;
// }
int specialFuction(int x, int y,Function function){ // call back
  final value = function();
  return value;
}


void main(){
  print(sum(1,2));
  print(displayString());
  Function getZ = () => 10;
  specialFuction(1, 2, getZ);
}
// int getZ(){
//   return 2;
// }