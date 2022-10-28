// ignore_for_file: avoid_print, unused_local_variable

/*
Extends là keyword dùng để đại diện cho tính kế thừa (inheritance) của OOP trong Flutter
Super là keyword đại diện cho truy cập ngoài cục bộ, khác với This

*/ 

class A{
  A(){
    print('I am A');
  }
}

class B extends A{
  B():super();
}

void main(){
  var b = B();
}