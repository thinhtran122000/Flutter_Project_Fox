// ignore_for_file: avoid_print, unused_local_variable

class Parent{
  Parent(str){
    print('Hello $str');
  }
}
class Child extends Parent{
  Child():super('son'){
    print('Hi');
  }
}
void main(){
  var child = Child();
}