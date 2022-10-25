// Break (Dùng để ngắt một vòng lặp) - Continue (Dùng để skip qua phần tử kế tiếp trong vòng lặp) ///////////////////
// ignore_for_file: avoid_print

void main(List<String> args){
  List<int> a=[1,2,3,4,5];
  var b = 5;
  for (int i =0;i<a.length;i++){
//     if(a[i]<b){ 
//       continue; //nếu dùng continue ở đây kết quả chỉ in ra 1 phần từ = 5
//     }
    if(a[i]<=b){
      print(a[i]); //nếu không có break ở đây thì sẽ in ra 1 dãy các số < 5
//       break; // ngược lại sẽ in ra 1 phần tử < 5
    }
  }
}