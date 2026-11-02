# P1: phân tích

## 1 bốn điểm sai
- dns: gửi thẳng url tới web server để phân giải mà không qua dns
- tcp/tls: nói tải html ngay không cần bắt tay tcp/tls
- http: nói sập csdl trả về mã 404
- rendering: dùng f12 sửa chữ tưởng là sửa được database
  
## 2 giải thích mã 500 và 404
- sập csdl là lỗi server nên trả về 500, 404 là không tìm thấy url
- báo 404 khiến bệnh nhân tưởng mất hồ sơ vĩnh viễn gây khủng hoảng

# P2: sửa lỗi

## 3 biên bản chuẩn
- bước 1 dns: trình duyệt hỏi hệ thống dns để lấy ip
- bước 2 kết nối: bắt tay tcp và mã hóa tls
- bước 3 http: server gặp lỗi csdl nên trả về mã 500
- bước 4 rendering: trình duyệt hiển thị trang báo lỗi
  
## 4 giải thích bộ nhớ
- f12 chỉ sửa dom trên ram máy khách tạm thời, không can thiệp được database server
- khi f5 reload sẽ tải lại dữ liệu gốc từ server xóa sạch thay đổi
