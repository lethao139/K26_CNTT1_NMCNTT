# Phần 1: 
## 1.IO
- Input: Domain Name (DNS)
  -  [**phong-dieu-phoi.greenlog.vn**](http://phong-dieu-phoi.greenlog.vn)
- Output: IP address
## 2. Sơ đồ luồng
```block
Nhập Domain name -> DNS find IP address -> Correct IP -> Connect to web server -> Server response
```
In this case:
```text
phong-dieu-phoi.greenlog.vn -> IP address -> Connect with server
```
# Phần 2:
Connect phong-dieu-phoi.greenlog.vn -> F12 -> Network -> Fetch/XHR -> Check Status column
# Phần 3:  Giả định Nam sửa đúng tên miền nhưng vẫn nhận mã **404 Not Found**, hệ thống đang gặp vấn đề gì?
- DNS hoạt động bình thường
- Đã kết nối được tới Server
- Server không tìm thấy trang/tài nguyên được yêu cầu

