// ignore_for_file: avoid_print, unnecessary_this, unused_element

class Coffee{
  void firstStep(){
    print('Add Coffee');
  }
  void secondStep(){
    print('Pour water into coffee');
  }
  void thirdStep(){
    print('Shake');
  }
  void makingCoffee(){
    this.firstStep();
    this.secondStep();
    this.thirdStep();
  }
}
class MilkCoffee extends Coffee{
  void makingMilkCoffee(){
    super.makingCoffee();
    void addMilk(){
      print('Add milk');
    }
  }
}

void main(){
  var milkCoffee = MilkCoffee();
  milkCoffee.makingMilkCoffee();
  print('Finish making Milk Coffee');
}
