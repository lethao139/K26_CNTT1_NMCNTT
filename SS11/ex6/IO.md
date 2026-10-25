1
- Input 

 - Mã linh kiện do người dùng nhập vào 
 - Bảng dữ liệu gốc chứa thông tin linh kiện (Mã LK, Tên LK, Nhà cung cấp, Đơn vị, Đơn giá).
- Process
 - Dùng hàm TRIM để xóa khoảng trắng thừa của Mã LK và Tên LK trong bảng gốc
 - Dùng VLOOKUP (với tham số FALSE) kết hợp cố định vùng tham chiếu $ để tìm các thông tin tương ứng
- Output 
 - Các ô kết quả tự động điền Tên linh kiện, Nhà cung cấp và Đơn giá chính xác tương ứng với Mã LK vừa nhập
 - 
2
- File Word (SRS - SmartFarm):
 - Sử dụng Heading 1 cho các mục lớn (1. Giới thiệu, 2. Mô tả chức năng...), Heading 2 cho các mục nhỏ (2.1 Tưới nước tự động...).
 - Chèn Auto TOC (References -> Table of Contents) để tự động cập nhật mục lục và số trang.
- File Excel (Bảng tra cứu & Lọc):
 - Tại cột "Tên linh kiện", dùng công thức làm sạch: =TRIM(B2).
 - Công thức tra cứu tại ô nhập liệu (VD ô B17):
 =IFERROR(VLOOKUP($B$16, $A$2:$E$12, 2, FALSE), "Không tìm thấy") (Tương tự cho cột 3, 4, 5). 
 - Bật Filter cho bảng "Danh sách khách hàng tiềm năng" (Ctrl+Shift+L). Lọc cột Tỉnh/Thành phố = "Hà Nội".
- File PowerPoint (1 Slide):
 - Assertion Title: "Thị trường nông nghiệp thông minh đạt 4 tỷ USD với CAGR 24% (2025F)".
 - Visual: Biểu đồ cột (Bar Chart) thể hiện quy mô tăng trưởng, kết hợp biểu đồ tròn (Pie Chart) cho cơ cấu giải pháp.
 - Rule 30: Toàn bộ text (tiêu đề, số liệu, chú thích) phải từ 30pt trở lên.
3
- Nếu dữ liệu nhập vào có khoảng trắng thừa (VD: "Hà Nội "), bộ lọc sẽ tách thành 2 nhóm riêng biệt. Để khắc phục:

- Làm sạch trước khi Filter (Khuyên dùng):

- Tạo một cột phụ ngay cạnh cột "Tỉnh/Thành phố".

- Nhập công thức: =TRIM(C2) (giả sử cột Tỉnh/Thành phố là cột C).

- Kéo công thức xuống hết bảng.

- Copy toàn bộ cột phụ -> Chuột phải -> Paste Values đè vào cột C ban đầu.

- Bật lại AutoFilter, lúc này chỉ còn duy nhất 1 giá trị "Hà Nội" sạch.

- Dùng công cụ Find & Replace (Xử lý nhanh):

- Bôi đen cột Tỉnh/Thành phố.

- Nhấn Ctrl + H. Gõ "Hà Nội " (có dấu cách) ở ô Find, gõ "Hà Nội" ở ô Replace. Bấm Replace All.
