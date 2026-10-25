1
- Input: CV: thông tin thô (Họ tên, Vị trí, Điểm, Ngoại ngữ, Kinh nghiệm)
- Process
  - Nhập dữ liệu vào file Excel 
  - Filter: Lọc Điểm chuyên môn > 8 và Có ngoại ngữ
  - update trạng thái : Đạt vòng CV / Mời phỏng vấn
- Output : danh sách ứng viên ĐẠT-> Mail Merge: tự động xuất ra hàng loạt thư mời phỏng vấn cá nhân hóa

2
- Heading 1 cho dòng "THƯ MỜI PHỎNG VẤN" normal cho nội dung
- Mail Merge:
  - chèn các biến
```
«Họ_và_tên»

«Vị_trí»

«Ngày_giờ»

«Người_phỏng_vấn»
```
- Dữ liệu liền mạch
- Mỗi cột 1 thông tin (Tách riêng cột Điểm và cột Ngoại ngữ)
- Filter cho toàn bộ bảng. Tại cột "Điểm chuyên môn" chọn Number Filters > Greater Than 8. Tại cột "Kỹ năng ngoại ngữ" lọc các giá trị có ngoại ngữ
- Đảm bảo tên cột trên Excel khớp hoàn toàn với tên biến đã chèn trong Word để Mail Merge chạy không lỗi
