// ignore_for_file: avoid_print


abstract class Animal{
  void eat();
  void action();
}
class Dog extends Animal{
  @override
  void eat(){
    print('Eat meat');
  }
  @override
  void action(){
    print('Barking');
  }
}

class Bird extends Animal{
  @override
  void eat(){
    print('Eat meat');
  }
  @override
  void action(){
    print('Singing');
  }
}

