// Var - Const - Final - Late
// Var là một keyword dùng để khai báo một biến với kiểu dữ liệu động (dynamic)
// ignore_for_file: avoid_print

class Fox{
  String? name;
  int? age;
  Fox({this.name, this.age});
}
void main(List<String> args){
  var a=5;
  var b='Fox';
  var c = 2.3;
  var d = [1,2,3,4,5];
  var e = Fox(name:"Thinh",age:22);
  print(a.runtimeType); // kiểu int
  print(b.runtimeType); // kiểu String
  print(c.runtimeType); // kiểu double
  print(d.runtimeType); // kiểu array
  print(e.runtimeType); // kiểu Object
// Const là một keyword dùng để định nghĩa 1 biến có giá trị không thay đổi. Biến được khai báo bắt buộc phải gán giá trị
  const int f = 10; 
  // f=15; //nếu gán a = 15 hệ thống báo lỗi => biến a được khai báo là biến không đổi 
  const int g = 5;
  const int h = g+f;
  print (h);
// Final là một keyword dùng để định nghĩa 1 biến có giá trị được gán là giá trị cuối cùng không đổi.
// Có thể khai báo biến trước rồi gán giá trị sau.
  final int i;
  final int j;
  i=1;
//   i=2; // nếu gán d = 2 hệ thống báo lỗi => biến d được khởi tạo và được gán giá trị 1 lần duy nhất
  j=2;
  var k = i*j;
  print(k);
}