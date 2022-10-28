// ignore_for_file: unused_local_variable, unnecessary_new, avoid_print

class Car{ // Class
  String name; // Thuộc tính (attribute)
  int year; 
  Car(this.name,this.year); // constructor
  void startEngine(){ // method function
    print('Start the engine');
  }
  void go(){
    print('Go');
  }
}
void main(){
  Car('BMW',2022); // create object
  var firstCar = new Car('BMW',2022); // create object
  var secondCar = Car('BMW',2022); // create object
  firstCar.name;
  firstCar.year;
  firstCar.startEngine();
  firstCar.go();
}