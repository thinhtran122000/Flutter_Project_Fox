// ignore_for_file: avoid_print

// Factory constructor là 1 constructor đặc biệt (thường được dùng trong việc gọi API).
// Nhiêm vụ chính của factory constructor là khi gọi đến nó ở hàm main(), 
// nó sẽ không tạo thêm đối tượng mới nếu đối tượng đó giống đối tượng nó đã tạo ra trước đó
class Singleton {
  int a;
  int b;
  int c;
  // Như mình đã nói ở trên thì đây là private constructor 
  factory Singleton() {
//     return Singleton._internal(1,2,3);
    return _singleton;
  }
  Singleton._internal(this.a,this.b,this.c){
    int d = a+b+c;
    print(d);
  }
  static final Singleton _singleton = Singleton._internal(1,2,3);
  // factory constructor
  
}
void main() {
  var s1 = Singleton();
  var s2 = Singleton();

  // hàm identical giúp ta so sánh cùng địa chỉ hay ko?. Giống toán tử === bên Kotlin
  print(identical(s1, s2));  // in ra: true
}
