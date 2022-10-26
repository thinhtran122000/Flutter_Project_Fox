// ignore_for_file: avoid_print, unused_local_variable
class Parent{
  Parent(); // Đây là 1 constructor đơn giản (Simple constructor). Khi tạo 1 lớp mặc định nó sẽ tạo 1 constructor như thế này
}
class Child{
  Child(){ // Constructor có thể được khai báo là 1 function. Ở đây ta cho in ra 'This is a constructor of child object'
    print('This is a constructor of child object');
  }
  // Một đối tượng có thể có nhiều constructor khác nhau.
  // Để phân biệt các constructor, ta khai báo: Classname.(tên của constructor mình đặt)();
  // Tương tự như ở trên, ta có thể khai báo như 1 function.
  Child.namedConstructor();
  Child.namedConstructorHaveFunction(){
    print('This is a named constructor have function');
  }
}
void main(){
// Tạo đối tượng Parent theo 2 cách:
//  => Tạo 1 đối tượng : Construtor();
//  => Tạo nhiều đối tượng : Datatype(có thể là var, Object) firstObject = Constructor(param1, param2,...);
//                           Datatype(có thể là var, Object) secondObject = Constructor(param1, param2,...);
  Parent(); 
  Child(); // => In ra 'This is a constructor of child object'
  var firstNamedConstructor = Child.namedConstructor();
  Child secondNamedConstructor = Child.namedConstructor();
  var namedConstructorHaveFunction = Child.namedConstructorHaveFunction(); // => In ra 'This is a named constructor have function'
}