// Assert (là biểu thức nhằm đảm bảo một giá trị nào đó phải phù hợp với điều kiện) ///////////////////
void main(List<String> args){
  var a = 5;// ở đây ta gán cho biến a = 5
  assert(a<5,'the number need to be lower than 5'); // ta bắt buộc rằng a < 5, nếu giá trị a => 5 hệ thống sẽ báo lỗi
  assert(a<=5,'the number need to be lower than 5'); // ngược lại khi đạt đúng điều kiện sẽ không báo lỗi
  }