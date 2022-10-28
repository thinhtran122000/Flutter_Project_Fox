// ignore_for_file: unused_local_variable, avoid_print

class Car{
  String? name;
  int? year;
  Car(this.name, this.year);
}
void main(){
  var bmw = Car('BMW',2022);
  var merc = Car('Mercedes',2022);
  print('${bmw.name} ${bmw.year} ');
  print('${merc.name} ${merc.year} ');
}