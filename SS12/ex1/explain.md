# 1 - **Phân tích:** Xác định Record và Field trong bảng Excel giao dịch
- Record: Là 1 hàng ngang chứa toàn bộ thông tin của một giao dịch duy nhất
- Field: Là 1 cột dọc chứa cùng một loại thông tin cho tất cả các giao dịch

# 2 - **Triển khai:** Bộ 3 file Word, Excel, PowerPoint

## 2.1 Word
- Heading 1: 1. Giới thiệu | 2. Tổng quan tính năng | 3. Luồng nghiệp vụ | 4. Mô tả chi tiết...
- Heading 2: 1.1. Mục đích | 1.2. Phạm vi | 2.1. Mô tả chung...
- auto toc : References → Table of Contents →  Automatic Table
## 2.2 Excel
- xóa khoảng trắng thừa trước khi tra cứu : =TRIM(Mã_GD)
- Tra cứu Tên User: =IFERROR(VLOOKUP(TRIM(A2), Bang_Tra_Cuu!$A$2:$B$100, 2, FALSE), "Không tìm thấy")
- Xóa mọi hàng trống, bỏ Merge Cell ở tiêu đề, đưa dòng "Tổng cộng" ra ngoài cùng bên dưới
## 2.3 PowerPoint
- Assertion Title:  "Lợi nhuận sau thuế đạt 2.89 tỷ, tăng trưởng 31.2% nhờ tối ưu chi phí vận hành."
- Visual: Dùng Bar Chart cho Doanh thu 5 tháng và Donut Chart cho Cơ cấu chi phí
- Font chữ số liệu và tiêu đề phải đạt mức tối thiểu 30pt để người ngồi xa vẫn đọc được

# 3 kiểm thử
- Lookup_value (Giá trị tìm): Mã giao dịch có bị dư khoảng trắng không? (Dùng TRIM để sửa)
- Table_array (Bảng tra): Mã giao dịch có nằm ở cột đầu tiên bên trái của vùng tra cứu không? (VLOOKUP luôn tìm từ trái sang phải)
- Cố định vùng ($): Đã khóa vùng tra cứu bằng $A$2:$B$100 chưa? (Nếu thiếu $, bảng sẽ bị trôi khi kéo công thức)
- Range_lookup (Điều kiện): Đã đặt là FALSE (Tìm chính xác) chưa? (Nếu để TRUE sẽ trả về kết quả sai lệch)





