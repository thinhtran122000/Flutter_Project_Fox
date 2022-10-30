// ignore_for_file: avoid_print, prefer_generic_function_type_aliases, unused_local_variable

/*
Typedef là keyword dùng để định nghĩa và mô phỏng 1 hoặc nhiều function nào đó tương tự với nhau 
 */


typedef Operator (int a, int b);

void add(int a, int b){
  print (a+b);
}
void subtract(int a, int b){
  print (a-b);
}
void multiple(int a, int b){
  print (a*b);
}
void divine(int a, int b){
  print (a/b);
}
void caculator(int a, int b, Operator operator){
  operator(a,b);
}
void main(){
  Operator op = add;
  op(20,20); // 40
  op = multiple;
  op(10,3); // 30
  op = subtract;
  op(30,10); // 20
  op = subtract;
  op(20,10); // 10
}