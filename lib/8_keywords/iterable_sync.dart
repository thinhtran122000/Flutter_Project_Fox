// ignore_for_file: unused_local_variable, avoid_print

/*
Iterable là 1 keyword đại diện cho phương pháp lập trình đồng bộ (synchronous*)
Tương tự như Stream<Datatype>, Iterable cũng được xem là 1 luồng dữ liệu, tức là có thể trả về nhiều dữ liệu trong tương lai
So sánh giữa Stream và Iterable 
=> Stream: 
  + Hiển thị cho phương pháp lập trình bất đồng bộ
  + Trường hợp không trả được dữ liệu về đúng theo điều kiện, Stream sẽ dừng lại các asynchronous function và handle exception
=> Iterable: 
  + Hiển thị cho phương pháp lập trình đồng bộ
  + Trường hợp không trả được dữ liệu về đúng theo điều kiện, Iterable sẽ tiếp tục các synchronous function dù cho có exception xảy ra 
Đi kèm với Iterable là các keyword sync* yield và yield*
  + Yield: là từ khóa để thể hiện rằng các luồng dữ liệu trả về liên tục sau khi thực thi các hàm (ở đây là các hàm đồng bộ) 
           và cho đến khi kết thúc khi 1 điều kiện nào đấy không phù hợp để có thể trả về giá trị 
  + Yield*: Nếu hàm đồng bộ hoặc bất đồng bộ là một hàm đệ quy, ta sẽ dùng keyword này để trả về luồng dữ liệu đệ quy (dùng cho cả Iterable và Stream)
- Luồng dữ liệu Iterable sau khi được trả về sẽ được xử lí qua nhiều cách:
  + Luồng data có thể chuyển đổi về kiểu dữ liệu list
  + Luồng data có thể chuyển đổi về kiểu dữ liệu set
Ví dụ về Iterable:
Iterable<Datatype> nameOfSyncFunction (parameter_1,parameter_2,...) sync* {
  (for data in loop){
    yield data;
  }
  if(condition){
    yield data;
  }
  else
  {
    yield data;
  }
  yield* nameOfAsyncFunction(recursive optional (+ - * / %));
}


*/

import 'dart:io';

Iterable<int> countIterable(int max) sync* {
  for(var i = 0;i<max;i++){ // Ta cho chạy vòng lặp từ 0->max với max là tham số được truyền vào ở hàm main().
    yield i;                // Sau mỗi lần vòng lặp chạy đến mỗi phần tử với mỗi giá trị i khác nhau, yield sẽ trả về luồng giá trị từ 0 -> max - 1 
  }                         // VD: max = 5 thì sẽ trả về luồng dữ liệu gồm 0 1 2 3 4 
  sleep(const Duration(seconds: 2));
}

Iterable<int> recursiveDown(int n) sync* {
  if (n > 0) {
    yield n; // Ở đây ta có điều kiện n > 0, khi tham số n được nhập vào > 0 thì ở đây sẽ trả về giá trị n
    yield* recursiveDown(n - 1); // Riêng ở dòng này, yield* gọi lại hàm trên với hình thức đệ quy. Nghĩa là sau khi tham số n được 
                                 // nhập vào ở hàm main(), nó sẽ kiểm tra nếu n > 0 => trả về giá trị n (yield n;) và kế tiếp
                                 // sẽ tiếp tục trả về giá trị n-1 (4 -> 3 -> 2 -> 1) cho đến khi thỏa điều kiện (đệ quy)   
    sleep(const Duration(seconds: 2));
  }
}

void main(){
  print('Start couting:'); // Đầu tiên, Start counting: sẽ được in ra trước
  // var datas = countIterable(5).toList(); // In ra [0,1,2,3,4]
  var datas = countIterable(5).toSet(); // In ra {0,1,2,3,4}
  var rescursiveDown = recursiveDown(5);
  print(datas); // Ở đây sẽ in ra 5 4 3 2 1
   print(rescursiveDown); // Ở đây sẽ in ra 5 4 3 2 1
  print('Finish counting'); // Cuối cùng in ra Finish counting
}