
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