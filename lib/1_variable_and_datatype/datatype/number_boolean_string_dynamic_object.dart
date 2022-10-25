// ignore_for_file: avoid_print
class Datatype{
  String? name;
  Datatype({this.name});
}
void main(){
  int a = 10;
  print(a);
  double b = 1.0;
  print(b);
  //Booleans bool
  bool c;
  c= true;
  print(c);
  c= false;
  print(c);
  // String
  String e = 'Fox';
  print (e);
  // Dynamic
  dynamic l;
  l = 'Fox';
  print(l);
  print(l.runtimeType); // String
  l = 1;
  print (l);
  print(l.runtimeType); // int
  //Object
  var n = Datatype();
  print(n.name); // null
  print(n.runtimeType); // Object (Datatype)
}