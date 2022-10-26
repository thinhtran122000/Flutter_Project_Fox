// ignore_for_file: unused_local_variable, avoid_print



// Required parameters:
// Field data được thêm keyword "required" ở trước là bắt buộc ta phải gán giá trị non-nullable cho field này khi gọi constructor ở hàm main()
class Child{
  String name;
  int age;
  Child({required this.name, required this.age}); // Required parameters in constructor
}
void main(){
  var firstChild = Child(name: 'Fox A', age: 5); 
  var secondChild = Child(age:10, name: 'Fox B'); // Có thể truyền giá trị không theo thứ tự các field được khai báo
  // var thirdChild = Child(name: 'Fox B'); // Ở đây sẽ báo lỗi do thiếu required field "age"
  print('${firstChild.name} ${firstChild.age}');
  print('${secondChild.name} ${secondChild.age}');
}