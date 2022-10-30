// ignore_for_file: avoid_print, unrelated_type_equality_checks
/*
Try - catch - finally là 3 keyword đi chung với nhau được dùng để kiểm soát các trường hợp của 1 việc làm nào đó khi lập trình.
Công việc đó có 2 trường hợp: trả về 1 giá trị hoặc trả về 1 lỗi
 - Try: thử làm 1 việc gì đó (truyền giá trị cho biến, kiểm tra điều kiện, các phương thức trong việc lấy dữ liệu API từ sever, các hàm bất đồng bộ)
 - Catch: khi việc làm không thể trả về giá trị, nó sẽ đưa ra lỗi. Vì có rất nhiều loại exception => catch sẽ báo thông tin của lỗi đấy 
 - Finally: được hiểu là dù các phương thức thực hiện ở try không thể trả về giá trị và ngay cả exception từ catch được thông báo đến
            finally bỏ qua các bước đó và tiếp tục làm công việc kế tiếp
 - Throw: ném ra một lỗi 
  (thường được dùng để hiển thị ra message mang tính chất báo lỗi khi ta chưa thể xử lí trường hợp dữ liệu không thể trả về)
 */
void main(){
  int a = 10;
  dynamic b = '10';
  try{
    print(a+b); // TypeException vì a và b là 2 datatype khác nhau
  }catch(e){
    print(e); // In ra TypeException và thông tin chi tiết của TypeException
  }finally{
    print(a.toString()+b.toString()); // Ở đây in ra 1010 (công việc của finally được thực thi)
    throw Exception('Cannot convert string b to number'); 
  }
}