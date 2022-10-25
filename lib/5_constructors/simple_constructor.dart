// ignore_for_file: avoid_print

class Human{
  // String? name;
  // int? age;
  String name;
  int age;
  // Human(this.name,this.age); //Cách 1
  // Human({this.name,this.age}); // Cách 2
  Human({required this.name,required this.age}); // Cách 3
}
void main(){
  // var firstHuman = Human('Fox', 22); // Có thể truyền giá trị các field vào luôn
  // var secondHuman = Human('Winter', 22); // Truyền giá trị các field dưới dạng Object(attribute1:value,attribute2:value,...)
  var firstHuman = Human(name:'Fox', age:22);
  var secondHuman = Human(name:'Winter', age:22);
  print('${firstHuman.name} ${firstHuman.age}');
  print('${secondHuman.name} ${secondHuman.age}');
}