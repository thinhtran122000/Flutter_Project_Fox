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
  // Animal.addAction(this.action,{this.name, this.type});
}
void main(){
  var firstAnimal = Animal(name: 'Chicken',type: 'Poultry'); 
  var secondAnimal = Animal(type: 'Cattle',name: 'Buffalo'); // Có thể truyền giá trị không theo thứ tự các field được khai báo
  // var firstAnimal = Animal(name: 'Chicken'); // Có thể không truyền giá trị cho 1 trong 2 field hoặc cả 2 field
  // var firstAnimal = Animal(type: '');
  // var firstAnimal = Animal();
  print('${firstAnimal.name} ${firstAnimal.type}');
  print('${secondAnimal.name} ${secondAnimal.type}');
}