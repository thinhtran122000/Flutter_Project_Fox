// ignore_for_file: avoid_print, unused_local_variable, unnecessary_this

// Case 1







// Case 2
// class Parent{
 
//   void go(){
//     print('go');
//   }
//   void say(){
//     print('say');
//   }
//   void action(){
//     this.go();
//     this.say();
//   }
// }
// class Child extends Parent{
//   void run(){
//     print('run');
//   }
//   @override
//   void action(){
//     super.action();
//     this.run();
//   }
// }
// void main(){
//   var child = Child();
//   child.action();
// }



class Caculator{
  int x;
  int y;
  Caculator.sum(this.x,this.y){ // 
    int a = x + y;
    print(a.toString());
  }
  // Caculator.redirect(int x,int y):this.sum(x,y);
  Caculator.redirect():this.sum(1,2);
}
void main(){
  var firstCaculator = Caculator.sum(1,2);
  // var thirdCaculator = Caculator.redirect(10,20);
  var secondCaculator = Caculator.redirect();
}