// ignore_for_file: avoid_print, unused_local_variable, unused_element
/* 
Enum hay còn được gọi là enumerations class là một class đặc biệt dùng để đại diện cho 1 hoặc nhiều giá trị cố định không đổi
Ở đó các giá trị được xem là các member
Có 2 loại enum class gồm Simple enum class và Enhanced enum class
=> Simple enum class
    VD: 
      enum Color {red,green,blue}
      enum Account {vip,premium,normal}
Tính chất của simple enum class:
+ Tất cả các class được tạo ra không thể kế thừa enum class
VD: enum Color {red,green,blue}
    class A extends Color{} // Ở đây sẽ báo lỗi
+ Gần với kiểu dữ liệu List, vị trí của các member được hiển thị thông qua giá trị member.index
+ Có thể hiển thị tất cả các member thông qua Enumclass.values (hoặc Enumclass.values[int index] nếu muốn hiển thị 1 member ở vị trí nào đó)
=> Enhanced enum class
    VD: 
      enum Status{
        complete(200,"Complete"),
        error(400,"Error");


        final int statusCode;
        final String description;
        const Status(this.statusCode,this.description);
      }
Tính chất của enhanced enum class ở Flutter verson <= 2.17.0:
+ Cũng có các tính chất của simple enum class
+ Có thể thêm truyền data vào trong các member
+ Có thể thêm các thuộc tính vào trong enhanced enum class vào sau các member (giống như thêm thuộc tính vào 1 class bình thường) và các thuộc tính phải để ở dạng final.
  Có thể thêm null safety vào nếu muốn giá trị của các thuộc tính có thể null
+ Có thể tạo generative constructor với chứa cái field data (giống như class bình thường)
+ Có thể tạo function trong enhanced enum class. Để có thể truy cập đến function ở hàm main(), bắt buộc phải là static function()
    VD: 
      enum Status{
        complete(200,"Complete"),
        error(400,"Error"),;
        final int statusCode;
        final String description;
        const Status(this.statusCode,this.description);
      }
+ Enum factory constructor có thể được triển khai đối với enum class. Các member của enum class được tạo ra có cùng instance
*/

enum ConstantColor {
  red,
  green,
  blue
}
enum Account {
  vip,
  premium,
  normal
}
enum Status{
  complete(200,"Complete"), // Field data trong member của enum class được khai báo theo constructor. 
  error(400,"Error"),;      // Ở đây ta có 2 field data là "statusCode" và "description"
  final int statusCode; // Attribute trong enum class
  final String description; // Attribute trong enum class
  const Status(this.statusCode,this.description); // enum generative constructor 
  // const Status.redirecting(int x, String y):this(x, y); 
  // static const instance = Status(200,'Complete');
  static Status? getByCode(int code){ // Function trong enum class
    for (Status status in Status.values){
      if(status.statusCode == code){ // Ở đay ta so sánh nếu status code
        return status;
      }else{
        throw 'Cannot find any status code';
      }
    }
    return null;
  }
  factory Status.factoryConstructor(int index) { // enum factory constructor
    return Status.values[index]; // Ta trả về 1 đối tượng là 
  }
  // factory Status.fromStatusCode(int code) {
  //   return values.firstWhere((e) => e.statusCode == code);
  // }
}

void main(){
  const green = ConstantColor.green;
  print(green.index); // Gần giống với kiểu dữ liệu List. Ở đây in ra 1 vì 'green' ở vị trí index = 1;
  print(ConstantColor.values); // [Color.red, Color.green, Color.blue]
  print(ConstantColor.values[0]); // Color.red
  print(Status.complete.statusCode); // 200
  print(Status.complete.description); // Complete
  print(Status.getByCode(200)); // Status.complete
  var firstStatus = Status.factoryConstructor(1);
  var secondStatus = Status.factoryConstructor(1);
  // var secondStatus = Status.factoryConstructor(0);
  print(Status.values[0]); // Status.complete
  print(firstStatus); // Status.error
  print(secondStatus); // Status.error
  print(secondStatus); // Status.complete
  print(identical(firstStatus, secondStatus)); // in ra true
  // var a = Status.fromStatusCode(200);
  // print(Status.fromStatusCode(200));
}