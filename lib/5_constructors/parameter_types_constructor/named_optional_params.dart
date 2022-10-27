// ignore_for_file: unused_local_variable, avoid_print

// Named optional parameters: 
//   - Các field data phải được đặt trong { } VD: Animal({this.name, this.type});
//   - Khi gọi constructor ở hàm main(), ta có 2 lựa chọn:
//     + Truyền giá trị cho các field dưới dạng Constructor(field_1: value, field_2: value,...)
//     + Ta có thể truyền giá trị cho field nào trước cũng được, không cần phải theo thứ tự và có thể không truyền giá trị luôn
class Animal{
  String? name;
  String? type;
  Animal({this.name, this.type}); // Named optional parameters trong constructor
}
// Required and Named optional parameters in constructor (lưu ý kĩ)
// Quy tắc đặt các field bao gồm required và optional: Constructor(required field_1,..., {optional field_1, optional field_2,...});
// Required field luôn được đặt trước Named optional field 
class Person{
  String? name;
  String? nickName;
  int? age;
  // String name;
  // String? nickName;
  // int? age;
  Person(this.name,{this.nickName,this.age}); // Required and Named optional parameters in constructor
  Person.specialPerson(this.name, {required this.nickName, this.age}); // Trường hợp đặc biệt của Required and Named optional parameters
  // Person.specialPerson(this.name, {this.nickName, required this.age});
}
void main(){
  var firstAnimal = Animal(name: 'Chicken',type: 'Poultry'); 
  var secondAnimal = Animal(type: 'Cattle',name: 'Buffalo'); // Có thể truyền giá trị không theo thứ tự các field được khai báo
  // var firstAnimal = Animal(name: 'Chicken'); // Có thể không truyền giá trị cho 1 trong 2 field hoặc cả 2 field
  // var firstAnimal = Animal(type: '');
  // var firstAnimal = Animal();
  var firstPerson = Person('Thinh',nickName: 'Fox',age: 22);
  var secondPerson = Person('Thinh',nickName: 'Fox');
  var thirdPerson = Person('Thinh',age: 22);
  // var person = Person(null,nickName:'Fox',age:22); // Nếu field "name" có null safety ở đây sẽ cho truyền vào giá trị nullable, ngược lại thì không
  var person = Person(null);
  var specialPerson = Person.specialPerson('Thinh', nickName: 'Fox');
  //  var specialPerson = Person.specialPerson('Thinh', age:22);
  print('${firstAnimal.name} ${firstAnimal.type} '); // Chicken Poultry
  print('${secondAnimal.name} ${secondAnimal.type}'); // Buffalo Cattle
  print('${firstPerson.name} ${firstPerson.nickName} ${firstPerson.age}'); // Thinh Fox 22
  print('${secondPerson.name} ${secondPerson.nickName} ${secondPerson.age}'); // Thinh Fox
  print('${thirdPerson.name} ${thirdPerson.nickName} ${thirdPerson.age}'); // Thinh 22
  print('${person.name} ${person.nickName} ${person.age}'); // null null null
  print('${specialPerson.name} ${specialPerson.nickName} ${specialPerson.age}'); // Thinh Fox null
}