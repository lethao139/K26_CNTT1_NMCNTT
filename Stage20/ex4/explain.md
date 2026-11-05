# phần 1 so sánh

| tiêu chí | google chrome | bitwarden |
| :--- | :--- | :--- |
| chống infostealer | thấp (lưu file login data dễ bị trích xuất) | cao (mã hóa trong vault, không lưu plaintext) |
| zero-knowledge | không (google quản lý khóa đồng bộ) | có (chỉ người dùng giữ master password) |
| đồng bộ chéo nền tảng | kém (phụ thuộc tài khoản google, cần trình duyệt) | tốt (app riêng cho win mac linux ios android) |

# phần 2 lập luận bitwarden 
- chrome lưu mật khẩu trong file login data mã độc infostealer quét và lấy đi dễ dàng
- bitwarden mã hóa aes-256 ngay trên máy khách
- việc phải nhập master password tạo ra lớp bảo vệ cuối cùng nếu máy bị nhiễm mã độc thì hacker cũng chỉ lấy được file vault đã mã hóa không thể giải mã
