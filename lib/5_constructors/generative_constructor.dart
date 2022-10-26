// ignore_for_file: avoid_print, unused_local_variable

  // Dưới đây là 1 generative constructor. 
  // Khác với simple constructor, generative constructor là 1 constructor có các field data: nameConstructor(this.field_1,this.field_2,...) 
  // Các thuộc tính của 1 đối tượng đều được khai báo trước constructor. 
  // Thường các thuộc tính được khai báo dưới dạng null safety (Datatype? data) để đảm bảo rằng khi lập tình không thuộc tính nào có giá trị null;
  // Nếu không để null safety và muốn tạo 1 biến nullable, phải đảm bảo xử lí đầy đủ các trường hợp khi thuộc tính chứa giá trị null
class Parent{
  String? name; 
  int? age;
  Parent(this.name,this.age); // Generative constructor
}
void main(){
  var firstParent = Parent('Fox', 22); // Các giá trị của generative constructor phải được truyền vào đầy đủ
  var secondParent = Parent('Winter', 22); 
  print('${firstParent.name} ${firstParent.age}'); 
  print('${secondParent.name} ${secondParent.age}');
}