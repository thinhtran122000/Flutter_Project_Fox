// ignore_for_file: avoid_print, unused_local_variable

// Factory constructor là 1 constructor đặc biệt (thường được dùng trong việc gọi API).
// Hoạt động gần giống với Singleton design pattern
// Singleton là 1 design pattern dùng để khởi tạo 1 biến hoặc 1 đối tượng với 1 instance duy nhất (instance ở đây được hiểu là vùng cấp dữ liệu)
// Nhiệm vụ chính của factory constructor là khi gọi đến nó ở hàm main(), nó sẽ không tạo thêm đối tượng mới nếu đối tượng đó giống đối tượng nó đã tạo ra trước đó
class Singleton {
  int a;
  int b;
  int c;
  // Để khởi tạo một đối tượng với 1 instance duy nhất, biến khởi tạo phải ở dạng static final
  // Ở đây, Singleton._iternal() là một đối tượng được tạo với 1 instance duy nhất
  static final Singleton _singleton = Singleton._internal(1,2,3);  
// Factory constructor                                                            
  factory Singleton() { // Factory constructor thường sẽ trả về một đối tượng thuộc instance trước đó đã được khởi tạo sẵn
//     return Singleton._internal(1,2,3);
    return _singleton;
  }
  Singleton._internal(this.a,this.b,this.c){  // Đây là 1 private constructor Singleton._iternal()
    int d = a+b+c;
    print(d);
  }
}
// Các tính chất của factory constructor:
// + Factory constructor có thể tạo 1 instance cho chính nó hoặc là cho 1 subclass (kế thừa)
class Parent{
  Parent();
  Parent.say(){ // Generative constructor
    print('Hello i am Fox\'s parents');
  } 
  static final parentInstance = Parent.say(); // trường hợp superclass (chính nó)
  // static final parentInstance = Parent();
  static final childInstance = Child.say(); // trường hợp subclass
  // static final childInstance = Child();
  factory Parent.superClass(){
    return parentInstance;
  }
  factory Parent.subClass(){
    return childInstance;
  }
}
class Child extends Parent{
  Child();
  Child.say(){ // Generative constructor
    print('Hello i am Fox');
  }
}
// + Factory constructor có thể trả về 1 đối tượng với 1 instance mới hoặc 1 instance cũ duy nhất (áp dụng cho super class và sub class)
class NewOldInstance{
  NewOldInstance();
  static final oldInstance = NewOldInstance(); 
  static final oldInstanceSubClass = SubClassNewOldInstance(); 
  factory NewOldInstance.getNewInstance(){ // Ở đây trả về đối tượng NewOldInstance() khác instance
    return NewOldInstance();
  }
  factory NewOldInstance.getOldInstance(){ // Ở đây trả về đối tượng NewOldInstance() thuộc 1 instance duy nhất
    return oldInstance;
  }
  factory NewOldInstance.getNewInstanceSubClass(){ // Ví dụ cho cả trường hợp subclass
    return SubClassNewOldInstance();
  }
  factory NewOldInstance.getOldInstanceSubClass(){ // Ví dụ cho cả trường hợp subclass
    return oldInstanceSubClass;
  }
}
class SubClassNewOldInstance extends NewOldInstance{
  SubClassNewOldInstance();
}
// + Factory constructor không thể dùng như 1 redirecting constructor (this và super) 
// VD: 
// class A{
//   A();
// }
// class B extends A{
//   B():super(); // Đây là generative constructor nên có thể tạo redirecting constructor được
//   factory B.factoryConstructor():super(){ // Báo lỗi
//     return B();
//   } 
// }
// + Sub class không thể dùng redirecting constructor để gọi đến factory constructor của super class
// VD:
// class A{
//   A();
//   factory A.factoryConstructor(){
//     return A();
//   }
// }
// class B extends A{
//    B():super.factoryConstructor(); // Ở đây sẽ báo lỗi
// }
void main() {
  // Ở đây ta khởi tạo 2 đối tượng s1 và s2
  var s1 = Singleton(); // in ra 6
  var s2 = Singleton(); // không in ra màn hình vì đối tượng Singleton() đã có sẵn rồi
  var parent1 = Parent.superClass(); // in ra 'Hello i am Fox\'s parents'
  var parent2 = Parent.superClass();
  print('--------------');
  var child1 = Parent.subClass(); // in ra 'Hello i am Fox'
  var child2 = Parent.subClass();
  print('--------------');
  var a1 = NewOldInstance.getNewInstance(); 
  var a2 = NewOldInstance.getNewInstance();
  var a3 = NewOldInstance.getOldInstance();
  var a4 = NewOldInstance.getOldInstance();
  var a5 = NewOldInstance.getNewInstanceSubClass();
  var a6 = NewOldInstance.getNewInstanceSubClass();
  var a7 = NewOldInstance.getOldInstanceSubClass();
  var a8 = NewOldInstance.getOldInstanceSubClass();
  
  // Hàm identical giúp ta so sánh cùng địa chỉ vùng cấp dữ liệu hay không, giống toán tử === bên Kotlin
  print(identical(s1, s2));  // true
  print(identical(parent1, parent2)); // true
  print(identical(child1, child2)); // true
  print(identical(a1, a2)); // false vì khác instance
  print(identical(a3, a4)); // true vì cùng instance
  print(identical(a5, a6)); // false vì khác instance
  print(identical(a7, a8)); // true vì cùng instance
}
