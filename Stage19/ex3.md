# phần 1 báo cáo phân tích ipo

1. input
- máy tính bị đơ lag, xuất hiện cửa sổ lạ
- tài khoản facebook gmail liên tục bị đổi mật khẩu hoặc văng đăng nhập
- nhận cảnh báo đăng nhập từ vị trí lạ

2. process
- ngắt kết nối mạng để cô lập máy tính
- dùng thiết bị khác đổi toàn bộ mật khẩu
- thu hồi toàn bộ phiên đăng nhập và token
- quét mã độc hoặc cài lại win

3. output
- máy tính sạch mã độc an toàn
- tài khoản được bảo vệ bật 2fa

# phần 2 triển khai

1. đổi mật khẩu từ thiết bị khác
- dùng điện thoại 4g truy cập trực tiếp vào gmail facebook
- chọn quên mật khẩu hoặc đổi mật khẩu tạo pass mới mạnh
- bật xác thực 2 yếu tố 2fa qua app authenticator hoặc sms

2. revoke token trên github
- truy cập github.com bằng thiết bị sạch
- vào settings -> sessions -> sign out of all other sessions
- vào settings -> developer settings -> personal access tokens -> revoke all các token đang có
- bật 2fa trong settings -> password and authentication
<img width="1007" height="877" alt="image" src="https://github.com/user-attachments/assets/ed8df3c6-4304-4f0f-8bde-6a5963c25bf1" />
<img width="1028" height="437" alt="image" src="https://github.com/user-attachments/assets/8ca2c5df-d4e0-4205-8525-594d92cb0be0" />
<img width="1010" height="861" alt="image" src="https://github.com/user-attachments/assets/eae172a4-5f77-4a79-ab46-9e6f93e54fe6" />



