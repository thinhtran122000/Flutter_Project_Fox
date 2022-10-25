// ignore_for_file: avoid_print

void main(){
  List<int> a = [1,2,3,4,5];
  for(var i in a){
    switch(i){
      case 1: print('One');
      break;
      case 2: print('Two');
      break;
      case 3: print('Three');
      break;
      case 4: print('Four');
      break;
      case 5: print('Five');
      break;
      default: print('Zero');
    }
    List <String> b = [];
    b.add(i.toString());
  }
}