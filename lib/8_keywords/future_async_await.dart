// ignore_for_file: avoid_print

/*
  Future, async, await là 3 keyword dùng trong việc lập trình bất đồng bộ
  Trong lập trình, có những giao thức có thể thực thi và ngày lập tức trả về 1 kết quả. 
  Tuy nhiên có những giao thức không thể trả kết quả về ngay lập tức mà cần có thời gian để thực thi. 
  Chính vì vậy lập trình bất đồng bộ là một cách lập trình phù hợp cho các giao thức cần thời gian thực thi.
  các giao thức ở đây thường là Function();
  Future: 
  - Đại diện cho 1 hàm trong tương lai sẽ trả về 1 kết quả nào đấy (Future<String,Int,...>) hoặc không có giá trị trả về (Future<void>)
  Async, Await: 
  - Hai keyword cùng đi chung với nhau để thể hiện đây là 1 function() bất đồng bộ.
  Future.delayed(const Duration(seconds:value_second), function() => result):
  - Dùng để delay một function() đang được thực thi. Kết quả (result) được trả về sau một khoảng thgian (duration) nào đó
  Tính chất của Future, async, await:
  + Có thể dùng trong 1 Future fuction() tự định nghĩa và cả hàm main() (Future <void> main() async {print(await function();)})
  + Await chỉ được sử dụng khi có keyword async được sử dụng
  Then: là keyword thể hiện rằng sau khi cho ra kết quả của một phương thức await nào đó thì sau đó nó sẽ làm gì tiếp theo
  VD: 
  Ví dụ về lập trình BĐB: 
  Future<String> function() async {
    print (await firstFunction());
    print (await secondFunction());
    return 'Some string';
  }
  Future<String> firstFunction(){
    return Future.delayed(const Duration(seconds:2),() => 'First result');
  }
  Future<String> firstFunction(){
    return Future.delayed(const Duration(seconds:2),() => 'First result');
  }
  */

Future<String> makingCoffee() async {
  print('Start making coffee...'); // => in ra 'Start making coffee...'
  print(await firstStep()); // Đợi function đầu tiên làm xong sau 3 giây => in ra 'Get coffee'
  print(await secondStep()); // Đợi function thứ 2 làm xong sau 3 giây => in ra 'Pour water into coffee'
  print(await finalStep()); // Đợi function thứ 3 làm xong sau 3 giây => in ra 'A cup of coffee'
  return 'Your coffee is finished'; // => in ra 'Your coffee is finished'
}




void main()  {
  print('Order coffee...'); // in ra 'Order coffee...'
  var making = makingCoffee(); // 
  print('Making coffee...'); // in ra 'Making coffee...'
  making.then((result) => print(result)).catchError((error) => print(error)); // in ra hàm makingCoffee()
  
}


Future<String> firstStep() {
  return Future.delayed(const Duration(seconds: 3),() => 'Get coffee'); // Function đầu tiên làm trong 3 giây
}
Future<String> secondStep() {
  return Future.delayed(const Duration(seconds: 3),() => 'Pour water into coffee'); // Function thứ 2 làm trong 3 giây
}
Future<String> finalStep() {
  return Future.delayed(const Duration(seconds: 3),() => 'A cup of coffee'); // Function thứ 3 làm trong 3 giây
}