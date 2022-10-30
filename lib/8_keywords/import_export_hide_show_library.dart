// ignore_for_file: unused_import

/*
Import: là keyword dùng để import thư viện và các thư mục ta gọi đến

Ví dụ về import trong thư viện:
  + Thư mục main.dart có sử dụng các widget dạng material => phải import 'package:flutter/material.dart'
Ví dụ về import trong thư mục: 
  + Class A nằm trong thư mục 'a.dart'
  + Class B ở thư mục 'b.dart' muốn truy cập đến A => phải import 'a.dart'
Library: là keyword có thể dùng để định nghĩa 1 thư mục trung gian trở thành thư viện
Export: đi kèm với library để export các đường dẫn của các thư mục về 1 thư mục được xem là trung gian
Ví dụ về library và export:
  + Class A nằm trong thư mục 'a.dart'
  + 'b.dart' là thư mục trung gian (library nameofmiddlewarefile). Trong 'b.dart' sẽ chứa đường dẫn đến 'a.dart'
  + Class C trong thư mục 'c.dart' muốn truy cập đến Class A có 2 cách để import thư mục 'a.dart'
  => import nameofmiddlewarefile
  => import 'a.dart'
Hide: keyword dùng để thể hiện thư mục đó có thể được import hoặc export với tất cả các thành phần trong thư mục trừ 1 thành phần đối tượng nào đó
Show: keyword dùng để thể hiện thư mục đó chỉ có thể được import hoặc export 1 thành phần đối tượng được chọn
 */
library middleware; // ở thư mục khác ta chỉ cần gõ lệnh import middleware là có thể gọi được đến thư mục 'abstract.class'

export 'abstract.dart' hide Bird ; // Ở đây ta export tất cả các đối tượng của thư mục 'abstract.dart' trừ đối tượng Bird ra
export 'abstract.dart' show Bird ; // Ở đây ta export duy nhất đối tượng Bird của thư mục 'abstract.dart' 
import 'abstract.dart' hide Bird ; // Tương tự ở trên
import 'abstract.dart' show Bird ; // Tương tự ở trên