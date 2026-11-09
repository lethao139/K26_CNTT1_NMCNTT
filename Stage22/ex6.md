# phần 1: prompt ai 3 thành phần
- [context]: tôi đang dùng git trên windows, chuẩn bị push code lên github thì bị lỗi
- [raw error]: error: open(".git/FETCH_HEAD"): Permission denied
- [instruction]: giải thích lỗi này bằng tiếng việt bình dân và hướng dẫn cách sửa an toàn

# phần 2: hướng dẫn chạy quyền admin & chụp ảnh
- bước 1: tắt terminal/vs code hiện tại
- bước 2: mở start menu, gõ cmd hoặc terminal -> chuột phải chọn run as administrator
- bước 3: dùng lệnh cd để trỏ đến thư mục dự án và chạy lại lệnh git push
- lưu ý chụp ảnh: dùng win + shift + s, khoanh đỏ vùng mã lỗi, che các thông tin nhạy cảm như tên user, email, đường dẫn cá nhân

# phần 3: bug report gửi giảng viên
- context: em dùng git trên windows, đang thao tác push code lên github
- expected: push code thành công lên repository
- actual: terminal báo lỗi permission denied không thể push
- log & screenshot: 
  + lỗi: error: open(".git/FETCH_HEAD"): Permission denied
  + em đã thử mở terminal bằng quyền run as administrator nhưng vẫn lỗi. Em gửi kèm ảnh chụp màn hình ạ
