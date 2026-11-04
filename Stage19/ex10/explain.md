# phần 1 nhận diện rủi ro và xử lý sự cố

1. tình huống 1
- loại tấn công: phishing / typosquatting
- chi tiết giả mạo: tên miền `githuh-security.com` bị gõ sai chính tả so với `github.com` và yêu cầu nhập lại mật khẩu qua link lạ

2. tình huống 2
- cạm bẫy: phần mềm crack chứa mã độc infostealer / trojan
- yêu cầu tắt windows defender là dấu hiệu nguy hiểm vì nó vô hiệu hóa lớp phòng thủ cuối cùng của hệ điều hành, tạo điều kiện cho mã độc dễ dàng chạy ngầm và đánh cắp dữ liệu

3. quy tắc 5 không
- tình huống 1: không click vào link lạ, không nhập mật khẩu qua link
- tình huống 2: không tải phần mềm crack, không tắt phần mềm diệt virus

4. 4 bước cấp cứu
- bước 1: ngắt kết nối mạng
- bước 2: từ thiết bị khác đổi mật khẩu và thu hồi token
- bước 3: quét virus hoặc cài lại win
- bước 4: bật 2fa cho tất cả tài khoản

# phần 2 chuyển sang password manager

1. hậu quả và tên tấn công
- nếu email nhóm bị lộ, kẻ tấn công dùng mật khẩu đó thử đăng nhập vào github và vercel
- tên tấn công: credential stuffing

2. zero-knowledge architecture
- mật khẩu được mã hóa aes-256 ngay tại máy khách trước khi gửi lên server
- server chỉ lưu chuỗi đã mã hóa, không có khóa giải mã
- hacker hack được server cũng không thể đọc dữ liệu

3. cấu hình generator
- độ dài: 20 ký tự
- chữ hoa: bật
- chữ thường: bật
- chữ số: bật
- ký tự đặc biệt: bật

# phần 3 kích hoạt 2fa cho github tổ chức

1. sms otp vs totp
- nên dùng totp vì sms otp có 2 nhược điểm: dễ bị tấn công sim swap, dễ bị chặn bắt tin nhắn hoặc lừa đảo

2. các bước kích hoạt
- vào settings -> password and authentication -> enable 2fa
- chọn setup using app
- quét qr code bằng google authenticator
- nhập mã 6 số để xác nhận

3. lưu trữ mã khôi phục
- nên lưu: in ra giấy cất két sắt, lưu vào usb offline
- không nên lưu: file text trên máy tính, google drive, chụp ảnh màn hình gửi qua chat

# phần 4 bảo vệ secrets trước khi push code

1. 2 secrets bị hardcode
- sk-proj-abc123456789
- smartcampus@2026

2. code sửa lại
```javascript
const API_KEY = process.env.API_KEY;
const DB_PASSWORD = process.env.DB_PASSWORD;

function connectDatabase() {
  return connect(DB_PASSWORD);
}
