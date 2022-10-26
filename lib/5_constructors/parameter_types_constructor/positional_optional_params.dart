
// ignore_for_file: avoid_print

// Positional optional parameters:
//   - Các field data phải được đặt trong [ ] VD: Car([this.name, this.year]);
//   - Khi gọi constructor ở hàm main(), ta có 2 lựa chọn:
//     + Truyền giá trị cho các field dưới dạng Constructor(value_1,value_2,...)
//     + Ta có thể không cần truyền giá trị cho field nào cả. Nếu muốn truyền thì bắt buộc phải truyền theo thứ tự từ field dầu tiên
class Car{
  String? name;
  int? year;
  Car([this.name, this.year]); // Positional optional parameters trong constructor
}
void main(){
  var car = Car('BMW',2022); 
  // var car = Car(2022,'BMW'); // Ở đây sẽ báo lỗi do truyền giá trị không theo thứ tự các field
  // var car = Car(2022); // Tương tự trường hợp 2
  // var car = Car('BMW'); // Có thể không truyền giá trị cho field còn lại hoặc cả 2 field
  // var car = Car();
  print('${car.name} ${car.year}');
}