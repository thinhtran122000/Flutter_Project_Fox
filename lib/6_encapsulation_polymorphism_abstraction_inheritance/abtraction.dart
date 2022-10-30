// ignore_for_file: avoid_print, override_on_non_overriding_member

abstract class Animals{ //ở đây ta khai báo 1 lớp trừu tượng Animals với 2 phương thức trừu tượng là eat() và makeSound()
  void eat();
  @override
  void makeSound(){
    print('object');
  }
}
// kế đến ta tạo 2 đối tượng kế thừa từ Animals gồm Dog và Bird. 2 đối tượng này có thể sử dụng lại các phương thức của lớp Animals
// thông qua phương thức ghi đè @override và có thể thêm những phương thức khác 
class Dog extends Animals{ 
  @override
  void eat(){
    // ignore: avoid_print
    print('Eat meat');
  }
  // @override
  // void makeSound(){
  //   // ignore: avoid_print
  //   print('Barking');
  // }
  void run(){
    // ignore: avoid_print
    print('Run');
  }
}

class Bird extends Animals{
  @override
  void eat(){
    // ignore: avoid_print
    print('Eat insect');
  }
  @override
  void makeSound(){
    // ignore: avoid_print
    print('Singing');
  }
  void fly(){
    // ignore: avoid_print
    print('Fly');
  }
}
void main(List <String> args){
  var dog = Dog();
  var bird = Bird();  
  dog.eat();// ở đây sẽ in ra 'Eat meat'
  dog.run();// ở đây sẽ in ra 'Run'
  bird.eat();// ở đây sẽ in ra 'Eat insect'
  bird.makeSound();// ở đây sẽ in ra 'Singing'
  bird.fly();// ở đây sẽ in ra 'Fly'
}
