// ignore_for_file: avoid_print

class Datatype{
  String? name;
  Datatype({this.name});
}
void main(){
  // List là kiểu dữ liệu theo dạng danh sách. Các phần tử trong list được liệt kê theo thứ tự và không duy nhất (non unique)
  List <int> f=[1,2,3,4,5,5]; //List String
  List <String> g = ['One','Two','Three','Three','Three']; //List int
  List <double> h = [1.0,2.0,3.0]; //List double
  List <List<int>> i = [[1,2,3,4],[2,3,4,5]]; //List của các list
  List<bool> m = [true, false];  //List boolean
  List<dynamic> k = [1,'Fox',1.0,true];  //List dynamic
  List <Datatype> o = []; //List object
  o.add(Datatype(name:'int'));
  o.add(Datatype(name:'double'));
  for(var i in o){
    print(i.name);
  }
  // List<Datatype> o = [Datatype(name:'int'),Datatype(name:'double'),Datatype(name:'String')];
  print(f);
  print(g);
  print(h);
  print(i);
  print(k);
  print(m);
  // Set là kiểu dữ liệu gần giống với list, khác ở chỗ set là một tập hợp các phần tử không theo thứ tự và là duy nhất
  Set<int> p = {};
  Set<int> q = {1, 4, 6};
  // Set<int> literalSpecialNumbers1 = {1, 4, 6, 6};// báo lỗi duplicate
  p.add(3);
  print(p);// in ra {3}
  p.add(6);
  print(p);// in ra {3,6}
  p.add(6);// không thêm vào được 
  print(p);// in ra {3,6}
  print(q); // in ra {1,4,6}
  Set<double> r = {1.0,2.0};
  Set<String> s = {'One','Two','Three'};
  Set<bool> t = {true,false};
  Set<dynamic> u = {1,'Fox',1.0,true};
  Set<List<int>> v = {[1,2,3,4],[2,3,4,5]};
  Set<Datatype> w = {};
  w.add(Datatype(name:'int'));
  w.add(Datatype(name:'double'));
  for(var i in w){
    print(i.name);
  }
  // Set<Datatype> w = {Datatype(name:'int'),Datatype(name:'double'),Datatype(name:'String')}; //khi in ra nó sẽ báo lỗi instance
  print(r);
  print(s);
  print(t);
  print(u);
  print(v);
  //Map là kiểu dữ liệu được hiển thị với 2 yếu tố là key (String) và value (dynamic).
  Map<String, dynamic> x = {'Account':'fox@gmail.com','Password':'123456'}; // 'Account' là key và value là 1 chuỗi String, tương tự với password
  Map<String, dynamic> xx = {'Items':['Account1','Account2','Account3']}; // 'Items' là key và value là 1 List<String>
  // Map<String, dynamic> xxx = {'Datatype1':Datatype(name:'int'),'Datatype2':Datatype(name:'double')}; // khi in ra nó sẽ báo lỗi instance
  Map<String, dynamic> xxxx = {'Items':[{'Account1':'fox1@gmail.com','Password':'123456'},{'Account1':'fox1@gmail.com','Password':'123456'}]}; // 'Items' là key, value là 1 List các object được hiển thị dưới dang Map<String, dynamic>
  List<Map<String,dynamic>> y = [{'Account1':'fox1@gmail.com','Password':'123456'},{'Account2':'fox2@gmail.com','Password':'123456'}];// List của Map
  Set<Map<String,dynamic>> z = {{'Account1':'fox1@gmail.com','Password':'123456'},{'Account2':'fox1@gmail.com','Password':'123456'}};
  print(x);
  print(xx);
  // print(xxx);
  print(xxxx);
  print(y);
  print(z);
}