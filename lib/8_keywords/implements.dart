/* 
Class trong flutter vừa được xem là 1 đối tượng vừa được xem là 1 interface
Giả sử nếu ta muốn sử dụng phương thức của 1 class nhưng không muốn kế thừa class đấy -> sử dụng implements
Một class được xem là 1 interface cũng có thể được khai báo như 1 abstract class
Từ khóa implements dùng để triển khai 1 lớp mà ta sẽ sử dụng thuộc tính hoặc phương thức của lớp đó
Một lớp có thể có nhiều interface
Khác với extends, khi sử dụng implements bắt buộc phải ghi đè lại các thuộc tính cũng như phương thức của interface
*/

class Person {
  // In the interface, but visible only in this library.
  String ?name;
  // Not in the interface, since this is a constructor.
  Person(this.name);
  // In the interface.
  String introduce(String who) => 'Hello, $who. I am $name.';
}
class Human {
  String? name;
  Human();
  String ask(){
    return 'Who are you?';
  }
}

// An implementation of the Person interface.
class Impostor implements Person,Human {
  @override
  String? name;

  @override
  String introduce(String who) => 'Hi $who. Do you know who I am?';
  
  @override
  String ask(){
    return 'I do not know';
  }

}

String introduceBob(Person person) => person.introduce('Bob');

void main() {
  // ignore: avoid_print
  print(introduceBob(Person('Kathy')));
  // ignore: avoid_print
  print(introduceBob(Impostor()));
}
