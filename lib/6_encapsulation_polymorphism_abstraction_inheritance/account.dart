// ignore_for_file: unused_element, avoid_print
class Account{ // Ta có 1 đối tượng Account chứa 2 thuộc tính là email (public) và password (private)
  String? email;
  String? _password;
  // Account._privateConstructor(this.email,this._password); 
  Account(this.email,this._password);
  // void _displayPassword(){ 
  //   print(_password); 
  // }
  String? getPassword(){
    return _password;
  }
  void setPassword(String x){
    _password = x;
  }
}