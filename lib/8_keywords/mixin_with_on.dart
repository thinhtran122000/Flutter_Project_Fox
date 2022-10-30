// ignore_for_file: avoid_print

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
mixin Medicine{
  int takeTemperature2(){
    return 10;
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
class Doctor{

}

void main(){

}