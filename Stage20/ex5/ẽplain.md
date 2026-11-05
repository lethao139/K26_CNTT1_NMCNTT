# phần 1 thiết kế kiến trúc

sơ đồ luồng 3 lớp bảo vệ
người dùng -> [lớp 1: nhập mật khẩu] -> máy chủ xác thực mật khẩu -> [lớp 2: nhập mã totp 6 số từ app] -> máy chủ xác thực totp -> [lớp 3: vân tay faceid hoặc mã pin app] -> thiết bị xác thực cục bộ -> đăng nhập thành công

cách 3 lớp chặn hacker có mật khẩu
- lớp 1 mật khẩu đã bị lộ hacker vào được nhưng hệ thống chặn lại đòi lớp 2
- lớp 2 totp yêu cầu thiết bị vật lý đang giữ secret key hacker không có điện thoại sẽ bị kẹt
- lớp 3 khóa app bằng sinh trắc học nếu hacker lấy được điện thoại vật lý cũng không mở được app để lấy mã

# phần 2 xử lý bẫy mất mạng trên máy bay

- mã totp được tạo ra từ thuật toán băm hmac-sha1 kết hợp giữa secret key lưu sẵn trong app và đồng hồ thời gian thực của thiết bị
- quá trình này diễn ra hoàn toàn ngoại tuyến offline
- chỉ cần đồng hồ điện thoại được đồng bộ thời gian tự động trước khi lên máy bay là app vẫn sinh ra mã 6 số bình thường
- sau khi có mã người dùng kết nối wifi máy bay để gửi giao dịch lên máy chủ xác thực
