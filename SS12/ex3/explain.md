# **Phần 1. Phân tích:** Mapping 4 tham số của VLOOKUP vào mô hình "Nhân viên kho tra hồ sơ".
- Mô hình "Nhân viên kho tra hồ sơ":
  - Lookup_value (Mã vận đơn): "Tên nhân viên" hoặc "Mã hồ sơ" cần tìm.
  - Table_array (Bảng giá cước): "Dãy tủ chứa hồ sơ"
  - Col_index_num (Cột giá cước): "Ngăn kéo số mấy trong tủ chứa giá tiền".
  - Range_lookup (FALSE)

# - **Phần 2. Triển khai:** Giải pháp công nghệ cho FastMove.

## 1. File Word 
- Styles (Heading 1, Heading 2, Normal) và chỉnh sửa (Modify) đồng loạt theo mã màu thương hiệu FastMove (Cam #FF6600, Xanh Navy #003366).
- Trình bày quy trình dạng các bước rõ ràng, không dùng định dạng thủ công.

## 2. File Excel 
- Giá cước: =VLOOKUP($A2, BangGiaCuoc!$A$2:$B$500, 2, FALSE)
  
## 3. File PowerPoint
- Assertion Title: "Tự động hóa VLOOKUP giúp cắt giảm 16 giờ chậm trễ mỗi ngày."
- Dùng Bar Chart so sánh thời gian xử lý (Trước và Sau khi tự động hóa). Highlight cột "Sau khi tự động hóa" bằng màu Cam 
- Chỉ dùng tối đa 3-4 bullet points ngắn gọn hướng dẫn shipper nhận đơn
  
## PHẦN 3: KIỂM THỬ (Xử lý lỗi #N/A)
- Bọc công thức bằng IFERROR kết hợp TRIM để làm sạch dữ liệu trước khi tra cứu: <br>
=IFERROR(VLOOKUP(TRIM($A2), BangGiaCuoc!$A$2:$B$500, 2, FALSE), "Mã không hợp lệ")
