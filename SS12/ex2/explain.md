# **Phần 1. Phân tích:** Mô tả sơ đồ cây cấu trúc Heading cho file SRS.
Cấu trúc SRS với 10 tiêu đề cấp 2 (Heading 2), quản lý bằng Navigation Pane:
- Heading 1: 1. Giới thiệu
  - Heading 2: 1.1. Mục đích
  - Heading 2: 1.2. Phạm vi
- Heading 1: 2. Mô tả tổng quan
  - Heading 2: 2.1. Tác nhân người dùng
  - Heading 2: 2.2. Môi trường hoạt động
- Heading 1: 3. Yêu cầu chức năng
  - Heading 2: 3.1. Tính năng Lớp học ảo (Video, Chat)
  - Heading 2: 3.2. Tính năng Quản lý bài giảng
- Heading 1: 4. Yêu cầu phi chức năng
  - Heading 2: 4.1. Hiệu năng & Bảo mật
  - Heading 2: 4.2. Khả năng mở rộng
- Heading 1: 5. Phụ lục
  - Heading 2: 5.1. Từ điển thuật ngữ
  - Heading 2: 5.2. Tài liệu tham khảo

# **Phần 2. Triển khai:** File báo cáo hoàn chỉnh

## 1. File Word:
- Gán đúng các cấp Heading như sơ đồ 
- Bật Navigation Pane để kiểm tra đủ mục cấp 2

## 2. File Excel:
- Đảm bảo Hàng 1 là Header duy nhất , xóa hàng tổng cộng chen ngang
- Bật AutoFilter:
  - Lọc cột Khoa = CNTT
  - Lọc cột Điểm chuyên cần → Number Filters → Less Than → Nhập 7

## 3. File PowerPoint:
- Nền Navy đậm (VD: #001F3F), chữ trắng, điểm nhấn (Accent) màu Cam (VD: #FF851B).
- Sử dụng Flowchart (Sơ đồ khối) để vẽ lộ trình (Đăng ký → Học → Thi → Nhận chứng chỉ).
- Assertion Title: "Lộ trình 4 bước đưa tri thức đến mọi nơi" 
- chữ trắng trên nền tối, font tối thiểu 30pt

# PHẦN 3: KIỂM THỬ (Xử lý lỗi Filter bằng TRIM)
Cách xử lý bằng hàm TRIM:
- Tạo 1 cột phụ ngay cạnh cột Họ Tên
- Tại ô đầu tiên, nhập công thức: =TRIM(Vị trí cột tên) 
- Kéo công thức xuống hết danh sách
- Copy toàn bộ cột phụ → Chuột phải chọn Paste Values đè ngược lại vào cột Họ Tên ban đầu
- Xóa cột phụ và bật lại Filter, dữ liệu sẽ hiển thị chuẩn xác



