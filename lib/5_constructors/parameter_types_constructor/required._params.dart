  // ignore_for_file: unused_local_variable, avoid_print



  // Required parameters:
  // Field data được thêm keyword "required" ở trước là ta phải gán giá trị non-nullable cho field này (nếu thuộc tính khai báo không có null safety) 
  // hoặc có thể gán giá trị nullable (nếu  thuộc tính khai báo có null safety) khi gọi constructor ở hàm main()
  class Child{
    // String name; // Trường hợp này không thể truyền giá trị null
    // int age;
    // String? name; // Trường hợp này có thể truyền giá trị null
    // int? age;
    String? name; 
    int? age; // Trường hợp này phải có null safety
    Child({required this.name, required this.age}); // Required parameters in constructor
    Child.requiredSingleParam({required this.name,this.age}); // Required Single Param in constructor
  }
  void main(){
    var firstChild = Child(name: 'Fox A', age: 5); 
    var secondChild = Child(age:10, name: 'Fox B'); // Có thể truyền giá trị không theo thứ tự các field được khai báo
    // var thirdChild = Child(name: 'Fox B'); // Ở đây sẽ báo lỗi do thiếu required field "age"
    var child = Child(name:null, age:null); // Có thể truyền giá trị null
    var allParam = Child.requiredSingleParam(name: 'Fox',age: 22);
    // var singleParam = Child.requiredSingleParam(name: 'Fox'); // Field required phải được truyền giá trị 
    print('${firstChild.name} ${firstChild.age}'); // Fox A 5
    print('${secondChild.name} ${secondChild.age}'); // Fox A 5
    print('${child.name} ${child.age}'); // null null
    print('${allParam.name} ${allParam.age}'); // Fox 22
    // print('${singleParam.name} ${singleParam.age}'); // Fox null
  }