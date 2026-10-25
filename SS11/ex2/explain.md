1
- dùng Merge Cell trong vùng dữ liệu (hỏng cấu trúc bảng, lỗi Filter/Sort)
- K có hàng trống chen giữa (hàng 6 làm đứt vùng dữ liệu, Filter bị mất)
- 1 ô 1 giá trị, không chứa khoảng trắng vô hình khiến bị tách thành 2 nhóm

2
- Gỡ Merge Cell: Bôi đen tiêu đề → Home → bỏ Merge & Center
- Xóa hàng trống: Chọn hàng 6 → Delete → Delete Sheet Rows
- thống nhất giá trị :
  - Tạo cột phụ cạnh cột Trạng thái: =TRIM(E2)
  - copy công thức -> paste values cột E
- Bật lại Filter
