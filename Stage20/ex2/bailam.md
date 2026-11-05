# phần 1 cơ chế domino effect và credential stuffing
- web nhỏ bị hack làm lộ danh sách tài khoản mật khẩu
- hacker dùng bot tự động lấy thông tin đó thử đăng nhập vào gmail facebook github
- do dùng chung mật khẩu 123456 nên các tài khoản lớn đồng loạt bị chiếm đoạt

# phần 2 mật khẩu cảm tính vs máy tính sinh ra
- mật khẩu cảm tính như 123456 hay ngày sinh dễ bị tấn công từ điển và brute-force đoán ra trong vài giây
- mật khẩu máy tính sinh ra có độ ngẫu nhiên cao độ dài lớn không theo quy luật nào nên brute-force mất hàng triệu năm

# phần 3 aes-256 và password manager
- ghi chép thủ công ra giấy hay file txt thì ai nhìn thấy cũng đọc được dễ mất cắp
- password manager mã hóa dữ liệu bằng aes-256 ngay trên máy người dùng
- aes-256 là chuẩn mã hóa đối xứng quân sự dùng khóa 256 bit không thể bẻ gãy bằng máy tính hiện tại
- khi đồng bộ lên cloud chỉ có chuỗi đã mã hóa hacker có hack server cũng không đọc được vì thiếu master password
