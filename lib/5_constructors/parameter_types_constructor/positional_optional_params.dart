
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
// Required and Positional optional parameters in constructor (lưu ý kĩ)
// Quy tắc đặt các field bao gồm required và optional: Constructor(required field_1,..., [optional field_1, optional field_2,...]);
// Required field luôn được đặt trước Positional optional field 
class Country{
  double? longt;
  int? latt;
  double? distance;
  // double? longt;
  // double? latt;
  // double distance;
  Country(this.distance,[this.latt,this.longt]); // Required and Positional optional parameters
}
void main(){
  var car = Car('BMW',2022); 
  // var car = Car(2022,'BMW'); // Ở đây sẽ báo lỗi do truyền giá trị không theo thứ tự các field
  // var car = Car(2022); // Tương tự trường hợp 2
  // var car = Car('BMW'); // Có thể không truyền giá trị cho field còn lại hoặc cả 2 field
  // var car = Car();
  var firstCountry = Country(200.0,162,162.02);
  var secondCountry = Country(200.0,162);
  var thirdCountry = Country(200.0);
  // var country = Country(null,162,162.00); // Nếu field "distance" có null safety ở đây sẽ cho truyền vào giá trị nullable, ngược lại thì không
  var country = Country(null);
  print('${car.name} ${car.year}'); // BMW 2022
  // print('${car.name} ${car.year}'); // BMW null
  // print('${car.name} ${car.year}'); // null null
  print('${firstCountry.distance} ${firstCountry.latt} ${firstCountry.longt}'); // 200 162 162.02
  print('${secondCountry.distance} ${secondCountry.latt} ${secondCountry.longt}'); // 200 162 null
  print('${thirdCountry.distance} ${thirdCountry.latt} ${thirdCountry.longt}'); // 200 null null
  print('${country.distance} ${country.latt} ${country.longt}'); // null null  null
}