// ignore_for_file: avoid_print, unused_local_variable

/*
- Extends => Là keyword dùng để đại diện cho tính kế thừa (inheritance) của OOP trong Flutter
- Super => Là keyword đại diện cho truy cập ngoài cục bộ, khác với This
- Extension => Là keyword đại diện cho hình thức khai báo 1 extension method.
  + Thường khi lập trình, ta có thể coding với nhiều thư viên khác nhau (thường là những thư viện trên pub.dev hoặc do mình tạo ra).
  Mỗi thư viện được tạo ra đều chứa các method khác nhau, từ đơn giản đến phức tạp. Việc để hiểu được kết quả được trả về thông qua
  từng method trong thư viện là một điều hoàn toàn khó khăn. Đôi khi ta chỉ cần sử dụng một vài method để trả về 1 kết quả phù hợp trong lúc
  lập trình nên extension method là một phương pháp triển khai tốt nhất
  + Ngoài ra, trong flutter UI, việc sử dụng extension khiến cho code UI trở nên dễ dàng và gọn hơn (extension trả về 1 Widget)
  + Cách triển khai extension:
      extension NameOfExtension on Datatype(String, int, double,... hoặc void){
        firstFunction(){
          return Datatype
        }
        secondFunction(){
          return Datatype
        }
      }
      void main(){
        var datatype = value of Datatype(number,string);
        datatype.firstFunction();
        datatype.secondFunction();
      }
  VD: 
  - Để có thể check email của 1 account user có hợp lệ hay không, ta có 2 trường hợp:
  + TH1: tạo 1 method isEmailValid() 
  void main(){
    var firstUserEmail = 'fox';
    var secondUserEmail = 'fox@gmail.com';
    print(isEmailValid(firstUserEmail));
    print(isEmailValid(secondUserEmail));

  }
  bool isEmailValid(String email){
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  }
  + TH2: giả sử có 1 thư viện Email_Validation chứa method isEmailValid(), ta sử dụng extension để có thể sử dụng method này
  extension EmailValidation on String{
    bool isEmailValid(){ // trường hợp không có parameter
      return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(this); // this là "email" , là đại diện cho tham số cục bộ được truyền vào
    }
    bool isEmailValidHaveParam(String email){ // trường hợp có parameter 
      return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
    }  
  }
  void main(){
    var firstUserEmail = 'fox';
    var secondUserEmail = 'fox@gmail.com';
    print(firstUserEmail.isEmailValid()); // thay vì dùng isEmailValid(firstUserEmail)
    print(secondUserEmail.isEmailValid());
    print(firstUserEmail.isEmailValidHaveParam(firstUserEmail)); 
    print(secondUserEmail.isEmailValidHaveParam(secondUserEmail));
  }

*/ 

class A{
  A(){
    print('I am A');
  }
}

class B extends A{
  B():super();
}

extension EmailValidation on String{
  bool isEmailValid(){ // trường hợp không có parameter 
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(this);
  }
  bool isEmailValidHaveParam(String email){ // trường hợp có parameter
     return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  }
}
void main(){
    B();
    var firstUserEmail = 'fox';
    var secondUserEmail = 'fox@gmail.com';
    print(isEmailValid(firstUserEmail)); // false
    print(isEmailValid(secondUserEmail)); // true 
    print(firstUserEmail.isEmailValid()); // false
    print(secondUserEmail.isEmailValid()); // true
    print(firstUserEmail.isEmailValidHaveParam(firstUserEmail)); // false
    print(secondUserEmail.isEmailValidHaveParam(secondUserEmail)); // true

}
bool isEmailValid(String email){
  return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  
}