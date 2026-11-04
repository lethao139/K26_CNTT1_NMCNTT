# Phần 1 báo cáo phân tích kiến trúc an ninh mật khẩu

1. Vì sao lưu trên chrome nguy hiểm
- chrome lưu mật khẩu trong tệp login data
- mã độc infostealer khi vào máy sẽ tự động trích xuất tệp này gửi về server hacker
- dù có mã hóa nhưng thuật toán của chrome yếu nên hacker dễ dàng giải mã lấy mật khẩu gốc

2. Bản chất zero-knowledge và client-side decryption
- zero-knowledge nghĩa là nhà cung cấp không biết mật khẩu
- mật khẩu được mã hóa aes-256 ngay tại máy khách trước khi gửi lên mây
- máy chủ bitwarden chỉ lưu chuỗi đã mã hóa
- nếu máy chủ bị hack hacker cũng không giải mã được vì thiếu master passphrase trên máy khách

# Phần 2 thiết kế chính sách và kịch bản chuyển đổi

3. Phương pháp tạo master passphrase
- ghép 5 đến 6 từ ngẫu nhiên không liên quan đến nhau kèm số và ký tự đặc biệt
- ví dụ: ngoi-sao-xanh-89-nguoi-tuyet

4. Bảng cấu hình bitwarden generator
- độ dài: 20 ký tự
- chữ hoa: bật
- chữ thường: bật
- số: bật
- ký tự đặc biệt: bật

5. Vì sao auto-fill chống phishing tốt hơn con người
- auto-fill chỉ điền mật khẩu khi tên miền khớp chính xác 100 phần trăm với trang web đã lưu
- nếu truy cập trang giả mạo như githúb.com auto-fill sẽ không kích hoạt
- con người dễ bị lừa bởi giao diện giống hệt và thường gõ mật khẩu thủ công

6. Quy trình lưu trữ emergency kit
- xuất bản emergency kit chứa master passphrase và mã khôi phục
- in ra bản cứng cất trong két sắt vật lý của studio
- trưởng nhóm giữ một bản sao dự phòng
- bật tính năng emergency access cấp quyền cho trưởng nhóm trên bitwarden
