// ignore_for_file: avoid_print
// Getter và setter là các phương pháp đặc biệt cung cấp quyền truy cập đọc và ghi vào các thuộc tính của 1 đối tượng
class Parent{
  String? name;
  int? age;
  Parent({this.name, this.age});
  String get getName => '$name'; 
  set setName(String _name) => name = _name;
}

void  main() {
  var parent = Parent();
  parent.setName = "Fox"; // Hàm set dùng để gán dữ liệu cho thuộc tính name
  print(parent.getName); // Biến name có dữ liệu 'Fox' được in ra thông qua hàm get name
}