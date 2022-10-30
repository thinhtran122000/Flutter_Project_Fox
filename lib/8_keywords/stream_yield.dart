// ignore_for_file: avoid_print, unused_local_variable

/* 
Cũng như Future, Stream cũng là 1 keyword đại diện cho phương pháp lập trình bất đồng bộ (asynchronous*) 
Điểm khác biệt giữa Future và Stream:
=> Future: 
  - Trả về 1 dữ liệu nào trong tương lai
  - Đi kèm với với Future là 2 keyword async và await
=> Stream: 
  - Tương tự như Iterable<Datatype>
  - Được xem 1 luồng dữ liệu, tức là có thể trả về nhiều dữ liệu trong tương lai
  - Đi kèm với Stream là các keyword async*, await, yield và yield*
  Ví dụ về Stream:
  Stream<Datatype> nameOfAsyncFunction(parameter_1,parameter_2,...) async* {
    await firstFunction();
    await secondFunction();
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
    + Async*: đi kèm với await để thể hiện đây là 1 hàm bất đồng bộ với nhiều dữ liệu được trả về trong tương lai
    + Yield: là từ khóa để thể hiện rằng các luồng dữ liệu trả về liên tục sau khi thực thi các hàm (ở đây là các hàm bất đồng bộ) 
             và cho đến khi kết thúc khi 1 điều kiện nào đấy không phù hợp để có thể trả về giá trị 
    + Sự khác nhau giữa return và yield:
    => Return: trả về 1 dữ liệu với kiểu dữ liệu nào đó
    => Yield: trả về 1 luồng dữ liệu. Luồng dữ liệu này có thể được xem là Iterable (synchronous) hoặc Stream (asynchronous)
    + Yield*: Nếu hàm đồng bộ hoặc bất đồng bộ là một hàm đệ quy, ta sẽ dùng keyword này để trả về luồng dữ liệu đệ quy (dùng cho cả Iterable và Stream)
  - Luồng dữ liệu Stream sau khi được trả về sẽ được xử lí thông qua 2 cách:
    + Dùng phương thức listen() => stream subscription object được trả về 
    + Dùng asynchronous for loop (await for)
*/

import 'dart:io';

Stream<int> countStream(int max) async*{ // Từ khóa async* được đặt như thế này
  for(var i = 0;i<max;i++){ // Ta cho chạy vòng lặp từ 0->max với max là tham số được truyền vào ở hàm main().
    yield i; // Sau mỗi lần vòng lặp chạy đến mỗi phần tử với mỗi giá trị i khác nhau, yield sẽ trả về luồng giá trị từ 0 -> max - 1 
  }          // VD: max = 5 thì sẽ trả về luồng dữ liệu gồm 0 1 2 3 4 
  sleep(const Duration(seconds: 2));
}

Stream<int> recursiveDown(int n) async* {
  if (n > 0) {
    yield n; // Ở đây ta có điều kiện n > 0, khi tham số n được nhập vào > 0 thì ở đây sẽ trả về giá trị n
    yield* recursiveDown(n - 1); // Riêng ở dòng này, yield* gọi lại hàm trên với hình thức đệ quy. Nghĩa là sau khi tham số n được 
                                 // nhập vào ở hàm main(), nó sẽ kiểm tra nếu n > 0 => trả về giá trị n (yield n;) và kế tiếp
                                 // sẽ tiếp tục trả về giá trị n-1 (4 -> 3 -> 2 -> 1) cho đến khi thỏa điều kiện (đệ quy)                             
    sleep(const Duration(seconds: 2)); 
  }
}

void main() async {
  print('Start couting:'); // Đầu tiên, Start counting: sẽ được in ra trước
  var datas = countStream(5).listen((data) => { // Khi gọi đến hàm bất đồng bộ, ta dùng phương thức listen() để có xử lí sau khi khi có dữ liệu stream 
    print(data),                    // Biến data ở đây chính là giá trị mà hàm bất đồng bộ trả về (dynamic data = 0 1 2 3 4). Ta cho in ra màn hình luồng dữ liệu 0 1 2 3 4
  });
  // var datas = countStream(5); 
  // await for(var i in datas){ // Ở đây ta dùng phương thức xử lí asynchronous for loop để hiển thị các giá trị từ stream
  //   print(i);
  // }
  recursiveDown(5).listen((data) => {print(data)}); // Ở đây sẽ in ra 5 4 3 2 1
  print('Finish counting'); // Cuối cùng in ra Finish counting
}