// As (Ép kiểu dữ liệu) - Is, Is! (Kiểm tra xem đối tượng khai báo có thuộc lớp đối tượng đó hay không) ///////////////////
// Ở dưới ta tạo 2 đối tượng Human và Animal
class Human{ 
  String? name;
  int? age;
  Human({this.name,this.age}); //tạo constructor với 2 thuộc tính của đối tượng Human là name và age
}
class Animal{
  String? name;
  int? year;
  Animal({this.name,this.year}); //tạo constructor với 2 thuộc tính của đối tượng Animal là name và year
}
void main(List<String> args){
  var object = Human(name:'John',age:12);
//   var object2 = Animal(name:'Kiki',year:5);
  object.name = 'Kate'; //ta kiểm tra xem là object.name hoặc (object as Human) có là đối tượng Human không, nếu đúng giá trị 'Kate' sẽ được gán cho biến
  // ignore: avoid_print
  print(object.name); //ở đây in ra 'Kate'
  if(object is! Animal){ //kiểm tra xem nếu object không phải kiểu đối tượng Animal => gán giá trị 'Kate', ngược lại 
    object.name = 'Kate'; 
    // ignore: avoid_print
    print(object.name);
  }
  try{
    (object as Animal).name = 'Kiki'; //ta thử ép kiểu object thành kiểu Animal, nếu đúng nó sẽ gán giá trị mới là 'Kiki'
    object.name = 'Kiki';
    // ignore: avoid_print
    print(object.name);
  }catch(e){
    throw 'Object is not Animal'; //ở đây hệ thống báo lỗi do object không thể ép kiểu về đối tượng Animal
  } 
}
