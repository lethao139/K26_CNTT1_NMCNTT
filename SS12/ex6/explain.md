PHẦN 1: PHÂN TÍCH (Excel "Xấu" vs. "Đúng")
Bảng "Xấu" (Vi phạm Quy tắc vàng): Có ô gộp (Merge Cell) ở tiêu đề; có hàng trống chen giữa; dòng "Tổng cộng" nằm lẫn trong dữ liệu; dữ liệu chứa khoảng trắng thừa; không thể AutoFilter hay PivotTable.

Bảng "Đúng" (Chuẩn Database): 1 dòng Header duy nhất (không gộp ô); 1 hàng = 1 Record (bản ghi nhà đất); 1 cột = 1 Field (trường thông tin); dữ liệu liền mạch 100%, không có hàng trống.

PHẦN 2: TRIỂN KHAI
1. File Word (SRS Đấu giá):

Phân cấp rõ ràng: H1 (1. Giới thiệu, 2. Chức năng đấu giá, 3. Yêu cầu hệ thống), H2 (2.1. Dành cho người mua, 2.2. Dành cho môi giới), H3 (2.1.1. Đặt giá thầu, 2.1.2. Thanh toán).

Chèn Auto TOC (Update entire table) để đồng bộ số trang.

2. File Excel (Quản lý & Tra cứu):

Bảng chính chứa các cột: Mã MG (Môi giới), Tỷ lệ hưởng.

Công thức VLOOKUP tra cứu Tỷ lệ hưởng dựa vào Mã MG:

excel
=VLOOKUP(E2, $H$4:$I$7, 2, FALSE) 
(Trong đó E2 là Mã MG cần tra, $H$4:$I$7 là bảng tra cứu Môi giới).

3. File PowerPoint (Pitch Deck - Tối đa 10 Slide):

Tuân thủ Rule 10/20/30: Tối đa 10 slide, nói trong 20 phút, font chữ tối thiểu 30pt.

White Space: Thiết kế thoáng đãng, chỉ để 1 thông điệp/slide.

Ví dụ Slide 1: "Smart-Home: Giải pháp đấu giá nhà đất minh bạch và tối ưu chi phí" (Để trống nhiều không gian, chỉ đặt 1 hình ảnh ngôi nhà lớn).

PHẦN 3: KIỂM THỬ (Sửa lỗi trôi vùng bằng dấu $)
Nguyên nhân: Nếu không có dấu $, khi kéo công thức xuống, vùng tham chiếu (Table_array) sẽ bị trôi (tự động tăng địa chỉ dòng), khiến VLOOKUP tìm sai dữ liệu hoặc lỗi #N/A.

Cách sửa: Dùng dấu $ để cố định tuyệt đối (khóa cả cột và dòng).

Ví dụ: Thay vì viết H4:I7, phải viết thành $H$4:$I$7. Khi kéo từ dòng 2 xuống dòng 100, bảng tra cứu vẫn luôn cố định ở vùng H4:I7.
