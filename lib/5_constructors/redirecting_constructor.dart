// ignore_for_file: avoid_print, unused_local_variable, unnecessary_this, overridden_fields, annotate_overrides
// Đối tượng có thể có nhiều constructor. Để có thể truy cập 1 constructor từ 1 constructor khác ta dùng redirecting constructor
// Ta có thể có thể truy cập 1 constructor từ 1 constructor khác bằng cách dùng dấu " : "
// Phạm vi để có thể chuyển đến 1 constructor:
// => Cùng 1 lớp: this() là từ khóa đại diện cho constructor ta chuyển hướng đến
//    VD: class A{
//          constructorA();
//          constructorB():this();
//        }
// this() đại diện cho constructor A được chuyển hướng đến 
// => Lớp con kế thừa lớp cha: super() là từ khóa đại diện cho constructor A được truy cập từ constructor B
//    VD: class A{
//          constructorA();
//        }
//        class B extends A{
//          constructorB():super();
//        }  
// super() đại diện cho constructor A của lớp A được truy từ constructor B của lớp B

// --------- Cùng 1 lớp --------------
class Name{
  String? firstName;
  String? midName;
  String? lastName;
  Name(this.firstName,this.midName,this.lastName){
    print('$firstName $midName $lastName');
  }
  Name.noFieldData(){
    print('No data');
  }
  Name.namedOptional(this.firstName,{this.midName,this.lastName}){
    print('$firstName $midName $lastName');
  } 
  Name.positionalOptional(this.firstName,[this.midName,this.lastName]){
    print('$firstName $midName $lastName');
  }
  Name.redirectingOwnClassNoFieldData():this.noFieldData(); // this() đại diện cho constructor Name.noFieldData() được truy cập từ constructor Name.redirectingOwnClassNoFieldData() trong cùng 1 lớp
  Name.redirectingRequired():this('Tran','Duy','Thinh'); // Do constructor Name() có các required field data nên constructor Name.redirectingOwnClass() bắt buộc phải truyền value vào
  Name.redirectingNamedOptional():this.namedOptional('Tran',midName: 'Duy',lastName: 'Thinh'); // Redirecting constructor có named optional parameters
  // Name.redirectingNamedOptional():this.namedOptional('Tran',midName: 'Duy'); // Tran Duy Null
  // Name.redirectingNamedOptional():this.namedOptional('Tran',lastName: 'Thinh'); // Tran null Thinh
  Name.redirectingPositionalOptional():this.positionalOptional('Tran','Duy','Thinh'); // Redirecting constructor có positional optional parameters
  // Name.redirectingPositionalOptional():this.positionalOptional('Tran','Duy'); // Tran Duy null
  // Name.redirectingPositionalOptional():this.positionalOptional('Tran','Thinh'); // báo lỗi
  Name.redirectingConstructorWithParameters(String a, String b, String c):this(a,b,c);
}
// --------- Khác lớp và kế thừa --------------
class Parent{
  String? name;
  int? age;
  String? address;
  Parent.noFieldData(){
    print('No data');
  }
  Parent(this.name,this.age, this.address){
    print('$name $age $address');
  }
  Parent.namedOptional(this.name,{this.age,this.address}){
    print('$name $age $address');
  } 
  Parent.positionalOptional(this.name,[this.age,this.address]){
    print('$name $age $address');
  }
}
class Child extends Parent{
  String? n;
  int? a;
  String? add;
  // @override         // Lưu ý nếu các thuộc tính của lớp cha được ghi đè (@override) lại ở lớp con, value của các field là null
  // String? name;
  // @override
  // int? age;
  // @override
  // String? address;
  Child(this.n,this.a,this.add):super('Fox',22,'28/14 Le Thi Hong'); // super() đại diện cho constructor Parent() của lớp Parent được truy từ constructor Child() của lớp Child
  // Child(this.name,this.age,this.address):super('Fox',22,'28/14 Le Thi Hong');
  Child.redirectingInheritanceClassNoFieldData():super.noFieldData(); 
  Child.redirectingInheritanceRequired():super('Fox',22,'28/14 Le Thi Hong'); // Do constructor Parent() có các required field data nên constructor Child.redirectingInheritanceRequired() bắt buộc phải truyền value vào
  Child.redirectingInheritanceNamedOptional():super.namedOptional('Fox',age: 22,address: '28/14 Le Thi Hong'); // Redirecting constructor có named optional parameters
  // Child.redirectingInheritanceNamedOptional():super.namedOptional('Fox',age: 22); // Fox 22 null
  // Child.redirectingInheritanceNamedOptional():super.namedOptional('Fox',address: '28/14 Le Thi Hong'); // Fox 28/14 Le Thi Hong
  Child.redirectingInheritancePositionalOptional():super.positionalOptional('Fox',22,'28/14 Le Thi Hong'); // Redirecting constructor có positional optional parameters
  // Child.redirectingInheritancePositionalOptional():super.positionalOptional('Fox',22); // Fox 22 null
  // Child.redirectingInheritancePositionalOptional():super.positionalOptional('Fox','28/14 Le Thi Hong'); // báo lỗi
  Child.redirectingInheritanceWithParameters(String x,int y, String z):super(x,y,z);
}
void main(){
  // Cùng 1 lớp
  var redirectingOwnClassNoFieldData = Name.redirectingOwnClassNoFieldData();// No data
  var redirectingRequired = Name.redirectingRequired(); // Tran Duy Thinh
  var redirectingNamedOptional = Name.redirectingNamedOptional(); // Tran Duy Thinh
  var redirectingPositionalOptional = Name.redirectingPositionalOptional(); // Tran Duy Thinh
  // Cùng 1 lớp có params
  var redirectingConstructorWithParameters = Name.redirectingConstructorWithParameters('Tran','Duy','Thinh'); // Ở đây truyền dữ liệu cho các parameter a,b,c
  // Khác lớp và kế thừa
  var redirectingInheritanceClassNoFieldData = Child.redirectingInheritanceClassNoFieldData(); // No data
  var redirectingInheritanceRequired = Child.redirectingInheritanceRequired(); //Fox 22 28/14 Le Thi Hong
  var redirectingInheritanceNamedOptional = Child.redirectingInheritanceNamedOptional();// Fox 22 28/14 Le Thi Hong
  var redirectingInheritancePositionalOptional = Child.redirectingInheritancePositionalOptional(); // Fox 22 28/14 Le Thi Hong
  // Khác lớp và kế thừa có params
  var redirectingInheritanceWithParameters= Child.redirectingInheritanceWithParameters('Fox', 22 ,'28/14 Le Thi Hong'); // Ở đây truyền dữ liệu cho các parameter x,y,z
}

// Các tính chất của redirecting constructor:
// + Redirecting constructor là 1 constructor không có body {} 
//   VD: class A{
//          A();
//          A.a():this(){
//            "Ở đây báo lỗi vì redirecting constructor không thể có body"
//          }; 
//        }
// + Lớp được tạo có gán giá trị trước cho các thuộc tính trong field data của constructor bằng dấu ":".
//   VD: class A{
//         int? a;
//         int? b;
//         int? c;
//         A(this.a,this.b,this.c);
//         A.withoutC(this.a,this.b):c=10;
//         A.withoutCB(this.a):b=10,c=10;
//         A.withoutAll():a=10,b=10,c=10;
//       }
// + Khi truy cập đến 1 constructor có field data, redirecting constructor phải truyền giá trị phù hợp 
//   với kiểu dữ liệu của field và cũng tuân thủ theo các kiểu field trong constructor (required và optional)
// Required:
//   VD: class A{
//         int? a;
//         int? b;
//         int? c;
//         constructorA(this.a,this.b,this.c);
//         constructorA.withoutC(this.a,this.b):c=10;
//         constructorA.withoutCB(this.a):b=10,c=10;
//         constructorA.withoutAll():a=10,b=10,c=10;
//         -----------------------------------------
//         constructorA.redirecting():this(10,10,10); // 3 giá trị của 3 field a b c được truyền vào
//         constructorA.redirectingWithoutC():this(10,10); // c đã được khai báo, do vậy chỉ cần truyền 2 field a và b
//         constructorA.redirectingWithoutBC():this(10); // tương tự các trường hợp trên
//         constructorA.redirectingWithoutAll():this();
//       } 
// Optional (Named và Positional)
//  <Named>:
//   VD: class A{
//         int? a;
//         int? b;
//         int? c;
//         constructorA(this.a,{this.b,this.c});
//         -----------------------------------------
//         constructorA.redirecting():this(10,10,10); // 3 giá trị của 3 field a b c được truyền vào
//         constructorA.redirectingWithoutC():this(10,10); // có thể không truyền giá trị c
//         constructorA.redirectingWithoutBC():this(10); // tương tự các trường hợp trên
//         constructorA.redirectingWithoutAll():this(); // báo lỗi
//       } 
//  <Positional>:
//   VD: class A{
//         int? a;
//         int? b;
//         int? c;
//         constructorA(this.a,[this.b,this.c]);
//         -----------------------------------------
//         constructorA.redirecting():this(10,10,10); // 3 giá trị của 3 field a b c được truyền vào
//         constructorA.redirectingWithoutC():this(10,10); // có thể không truyền giá trị c, nếu truyền giá trị cho c => báo lỗi
//         constructorA.redirectingWithoutBC():this(10); // tương tự các trường hợp trên
//         constructorA.redirectingWithoutAll():this(); // báo lỗi
//       }
// + Redirecting constructor không thể truyền vào field data, tuy nhiên có thể thêm vào các normal parameter.
//   Giá trị của các parameter này được truyền vào thông qua hàm main()
//   VD: class A{
//         int? a;
//         int? b;
//         int? c;
//         constructorA(this.a,this.b,this.c);
//         -----------------------------------------
//         constructor.redirecting(int x, int y, int z):this(x,y,z);
//       }
//       void main(){
//          constructor.redirecting(10,10,10);
//       }
//  Optional (Named và Positional)
//  <Named>:
//   VD: class A{
//         int? a;
//         int? b;
//         int? c;
//         constructorA(this.a,{this.b,this.c});
//         -----------------------------------------
//          constructorA.redirecting(int x, int y, int z):this(x,a:y,b:z); // 3 giá trị của 3 field a b c được truyền vào
//          constructorA.redirectingWithoutC(int x, int y):this(x,a:y); // có thể không truyền giá trị c
//          constructorA.redirectingWithoutBC(int x):this(x);
//       }
//       void main(){
//          constructor.redirecting(10,10,10);
//          constructor.redirectingWithoutC(10,10);
//          constructor.redirectingWithoutBC(10);
//       }
//  <Positional>:
//   VD: class A{
//         int? a;
//         int? b;
//         int? c;
//         constructorA(this.a,[this.b,this.c]);
//         -----------------------------------------
//          constructorA.redirecting(int x, int y, int z):this(x,y,z); // 3 giá trị của 3 field a b c được truyền vào
//          constructorA.redirectingWithoutC(int x, int y):this(x,y); // có thể không truyền giá trị c
//          constructorA.redirectingWithoutBC(int x):this(x);
//       }
//       void main(){
//          constructor.redirecting(10,10,10);
//          constructor.redirectingWithoutC(10,10);
//          constructor.redirectingWithoutBC(10);
//       }
// + Redirecting constructor chỉ áp dụng với các generative constructor
// + Khi truy cập đến const redirecting constructor, constructor truy cập đến nó phải là 1 const redirecting constructor
// + Redirecting constructor có thể truy cập đến 1 constructor duy nhất tại 1 thời điểm
// + Không thể dùng redirecting constructor theo quy tắc vòng 
//   VD: constructorA():constructorB() or constructorB():constructorA()
//       constructorA():constructorB() and constructorB():constructorA() => báo lỗi
// + 

// class Caculator{
//   int x;
//   int y;
//   Caculator.sum(this.x,this.y){ // 
//     int a = x + y;
//     print(a.toString());
//   }
//   // Caculator.redirect(int x,int y):this.sum(x,y);
//   Caculator.redirectCaseOne():this.sum(1,2);
//   Caculator.redirectCaseTwo(int x, int y):this.sum(x,y);
// }
// void main(){
//   var firstCaculator = Caculator.sum(1,2); // trường hợp 1
//   var secondCaculator = Caculator.redirectCaseOne(); // trường hợp 2
//   var thirdCaculator =  Caculator.redirectCaseTwo(1,2); // trường hợp 3 
  
// }