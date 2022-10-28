// ignore_for_file: avoid_print, unused_local_variable

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