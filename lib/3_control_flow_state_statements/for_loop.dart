// ignore_for_file: avoid_print

void main(){
  int n=6;
  List<int> a=[1,2,3,4];
  for(var i=0;i<=n;i++){
    print('${(i+1).toString()} Fox');
  }
  for (var i in a){
    print('${i.toString()} Fox');
  }
}