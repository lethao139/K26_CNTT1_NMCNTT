# phần 1 ipo

input
- mã dự phòng backup codes đã in ra giấy hoặc lưu ngoại tuyến trước đó

process
- bước 1: chọn use a backup code tại màn hình yêu cầu 2fa
- bước 2: nhập một mã dự phòng hợp lệ
- bước 3: vào phần bảo mật thu hồi hủy toàn bộ mã dự phòng cũ và phiên đăng nhập cũ
- bước 4: tạo mã dự phòng mới và thiết lập lại totp trên thiết bị mới

output
- đăng nhập aws thành công
- thiết bị cũ bị vô hiệu hóa
- hệ thống an toàn với mã mới

# phandf 2
- mất điện thoại nếu kẻ gian mở khóa được máy sẽ thấy ảnh chụp màn hình mã dự phòng
- ảnh có thể bị tự động đồng bộ lên cloud nếu lộ tài khoản cloud thì mất mã
- thư viện ảnh dễ bị mã độc infostealer quét và đánh cắp dữ liệu
