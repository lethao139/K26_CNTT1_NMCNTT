# phần 1 
- openai_api_key bị hacker lợi dụng gọi api ai miễn phí làm mất sạch tiền thẻ tín dụng
- steam_web_api_key bị truy cập trái phép vào hệ thống steam để chiếm quyền quản trị hoặc đánh cắp dữ liệu
- mongo_uri bị truy cập trực tiếp vào database cho phép xóa sạch dữ liệu game hoặc chạy mã độc tống tiền
- jwt_secret bị kẻ gian dùng để tự tạo token hợp lệ giả mạo admin qua mặt hệ thống xác thực và kiểm soát toàn bộ game

## phải revoke ngay cả khi đã xóa commit hoặc chuyển private repo

- github scraper bot hoạt động tự động 24/7 và chỉ mất 3-5 giây để quét lưu lại toàn bộ key ngay khi commit vừa được push lên
- thao tác xóa commit hoặc chuyển private sau 10 phút là quá muộn vì key đã nằm trong cơ sở dữ liệu của hacker
- lịch sử git lưu lại mọi thay đổi nên việc xóa file ở hiện tại không xóa được dấu vết trong quá khứ nếu không dùng công cụ viết lại lịch sử
- nguyên tắc bảo mật là một khi secret đã lộ thì nó vĩnh viễn không còn an toàn
  
