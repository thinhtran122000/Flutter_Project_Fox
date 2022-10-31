/*
  Mixin là một cách để sử dụng lại code của nhiều phân cấp lớp (đa kế thừa)
  Lấy ví dụ trừu tượng:
  - Ta có 3 lớp là Employee, Doctor và Nurse. Giả sử trong super class Employee ta có 1 phương thức clockIn() phù hợp với sub class Nurse.
    Theo tính chất kế thừa thì ta chỉ cần ghi đè lại phương thức trên để sử dụng. Tuy nhiên, giả sử ta muốn có thêm 1 phương thức là
    takeTemperature() cho sub class Nurse nhưng không muốn thêm phương thức này trực tiếp vào super class Employee. Vậy thì có cách nào để thực hiện việc này
  => Sử dụng mixin để làm việc này
  Tính chất của mixin:
  + Mixin không có constructor, chỉ có các phương thức và các thuộc tính được truyền vào.
  + Giả sử 1 class có 1 mixin hoặc có nhiều mixin kết nối với nhau, mixin sẽ kết nối với class và kết nối các mixin với nhau thông qua keyword 'on'
  + Các mixin kết nối với nhau được đọc theo nguyên tắc từ phải -> trái 
  VD: class A{
        A();
      }
      mixin MixinA on class A{
        mixinAFunction();
      }
      mixin MixinB on MixinA{
        mixinBFunction();
      }
      class B extends A with MixinA, MixinB{
        B();
      }
      => MixinB -> MixinA -> class B
*/


//  ignore_for_file: avoid_print, unnecessary_overrides

class Employee{
  Employee();
  void clockIn(){
    print('Clock in');
  }
}
mixin Medical{
  int takeTemperature(){
    return 10;
  }
}
mixin Medicine on Medical{
  String takeDrug(){
    return 'Panadol';
  }
}

class Nurse extends Employee with Medical,Medicine{
  @override
  int takeTemperature() {
    return super.takeTemperature();
  }

  // @override
  // int takeTemperature2() {
  //   return super.takeTemperature2();
  // }
}
void main(){
  var nurse = Nurse();
  print('${nurse.takeTemperature()} C'); // Ở đây in ra 10
}