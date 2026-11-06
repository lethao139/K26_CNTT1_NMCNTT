# phần 1 prompt

1. nguyên nhân ai ảo giác: câu hỏi thiếu ngữ cảnh và mã lỗi cụ thể, ai không có dữ liệu thật nên đoán mò sai lệch

2. prompt 3 thành phần
- [context]: tôi đang chạy phần mềm voltcharge controller trên windows 11 tại máy kiosk
- [raw error]: `system.unauthorizedaccessexception access to the path 'c:\program files\voltcharge\data\session.log' is denied`
- [instruction]: giải thích nguyên nhân lỗi bằng tiếng việt và hướng dẫn 3 bước khắc phục

# phần 2 giải mã và khắc phục

3. nguyên nhân: phần mềm cố ghi file log vào thư mục program files (thư mục hệ thống được bảo vệ) mà không có quyền admin nên bị từ chối

4. ba bước khắc phục
- bước 1: chuột phải biểu tượng app chọn run as administrator
- bước 2: mở đường dẫn `c:\program files\voltcharge\data`, chuột phải thư mục chọn properties -> security
- bước 3: chọn edit -> chọn user hiện tại -> tick full control -> ok

5. bẫy an ninh: thay chuỗi api_key bằng [hidden] trước khi chat. lý do: ai lưu lịch sử chat trên server, gửi key lên sẽ bị lộ.
