import 'account.dart';
// ignore_for_file: unused_field, unused_element, avoid_print, unused_local_variable

/*
Encapsulation (tính đóng gói) là một trong 4 tính chất đặc trưng của OOP.
+ Cho phép che giấu thông tin và những tính chất xử lý bên trong của đối tượng (các attribute, constructor, method)
+ Các đối tượng khác không thể tác động trực tiếp đến dữ liệu bên trong và làm thay đổi trạng thái của đối tượng mà bắt buộc phải thông qua 
các phương thức công khai (public method) do đối tượng đó cung cấp => Tăng tính bảo mật của đối tượng, tránh tình trạng dữ liệu bị mất 

+ Trong flutter có 2 dạng đóng gói là public và private. Đối với private attribute, private constructor và private method khi khai báo
thường có dấu (_) ở đằng trước
VD: class A{
      String a; // public attribute
      String _b; // private attribute
      A._privateConstructor(this.a,this._b); // private constructor
      void _displayB(){ // private method
        print(_b); 
      }
    }
+ Lưu ý
=> Khác thư mục: các private attribute, private constructor và private method có thể truy cập và được sử dụng
=> Khác thư mục: các private attribute, private constructor và private method không được truy cập và sử dụng. 
   Muốn truy cập đến được các private attribute, cần phải thông qua các phương thức của chính lớp đó (getter và setter)
*/
// + Để hiện hữu cho tính đóng gói, hãy xem qua ví dụ này

class Account{ // Ta có 1 đối tượng Account chứa 2 thuộc tính là email (public) và password (private)
  String? email;
  final String? _password;
//   Account._privateConstructor(this.email,this._password); 
  Account(this.email,this._password);
  void _displayPassword(){ 
    print(_password); 
  }
}
// Sau khi thử xong ví dụ này hãy chuyển class Account qua 1 thư mục khác và thử lại
void main(){
  var account = Account('fox@gmail.com', '123456');
  print(account.email); 
  // print(account._password); // Ở đây vì là cùng 1 thư mục nên có thể truy cập vào attribute, method private 
  // account._displayPassword();
  // Khác thư mục
  // print(account.getPassword()); // Báo lỗi vì không thể truy cập đến private attribute
  // account.setPassword('Password'); // Báo lỗi vì không thể truy cập đến private method
}