PHẦN 1: WORD (SRS)
1 & 2. Cấu trúc phân cấp & Gán Heading:

Heading 1: 1. Giới thiệu dự án | 2. Chức năng hệ thống | 3. Yêu cầu bảo mật

Heading 2: 1.1. Mục tiêu | 1.2. Đối tượng sử dụng | 2.1. Quản lý mượn sách | 2.2. Quản lý trả sách

Heading 3: 2.1.1. Luồng mượn sách qua thẻ sinh viên
(Chỉ bôi đen tiêu đề và chọn Style tương ứng trên thanh Home).

3. Viết nội dung:

Mục 2 (Functional): Hệ thống cho phép sinh viên tra cứu và tạo phiếu mượn sách trực tuyến. Hệ thống tự động trừ số lượng sách trong kho khi phiếu mượn được xác nhận.

Mục 3 (Non-functional): Hệ thống phải mã hóa mật khẩu người dùng 2 lớp (2FA). Thời gian phản hồi truy vấn dữ liệu không quá 2 giây.

4. Auto TOC:

Vào References 
→
→ Table of Contents 
→
→ Chọn Automatic.

Gõ thêm 1 đoạn văn dài đẩy mục 3 sang trang mới.

Click chuột phải vào TOC 
→
→ Update Field 
→
→ Update entire table (Số trang sẽ tự nhảy).

PHẦN 2: EXCEL (Chuẩn hóa Database)
1. 3 Lỗi vi phạm Quy tắc vàng:

Lỗi	Vị trí	Quy tắc vi phạm
1	Hàng 1	Gộp ô (Merge Cell) ở tiêu đề bảng.
2	Hàng 5	Hàng trống chen giữa vùng dữ liệu.
3	Hàng 6	Dòng "Tổng cộng" nằm lẫn trong vùng dữ liệu.
2. Bảng sửa chuẩn:

Bỏ Merge ô hàng 1, đưa MSSV, Họ Tên, Mã Sách, Ngày Mượn, Tình Trạng lên làm Header (Hàng 1).

Xóa hoàn toàn hàng 5 (hàng trống).

Cắt dòng "Tổng cộng" vứt xuống dưới cùng (cách data 2 hàng).

3. Record & Field:

1 Record (Bản ghi): Là 1 dòng dữ liệu hoàn chỉnh (VD: Dòng SV001 | Nguyễn Văn An | S001 | 01/10/2026 | Đang mượn).

1 Field (Trường): Là 1 cột thông tin (VD: Cột "Họ Tên", cột "Ngày Mượn").

4. AutoFilter: Bấm Ctrl+Shift+L 
→
→ Tại cột "Tình Trạng", bỏ tick (Select All) 
→
→ Chỉ tick chọn Quá hạn 
→
→ OK.

PHẦN 3: EXCEL (VLOOKUP)
1. Công thức VLOOKUP (Giả sử Mã Sách ở cột C, bắt đầu từ dòng 2):

excel
=VLOOKUP(C2, DanhMucSach!$A$2:$C$100, 2, FALSE)
2. Lỗi tại S099: Trả về lỗi #N/A. Nguyên nhân: Mã S099 không tồn tại trong bảng DanhMucSach và tham số cuối là FALSE (yêu cầu tìm chính xác tuyệt đối).

3. Bọc IFERROR:

excel
=IFERROR(VLOOKUP(C2, DanhMucSach!$A$2:$C$100, 2, FALSE), "Không tìm thấy sách")
PHẦN 4: POWERPOINT (1 Slide)
1. Nội dung Slide:

Assertion Title: "Phát hiện 2 phiếu quá hạn và 1 mã sách lỗi cần xử lý ngay."

Content Area (Big Number): 2 Phiếu Quá Hạn & 1 Mã Sách Không Tồn Tại (S099).

Loại biểu đồ: Donut Chart (Biểu đồ vòng khuyên) để thể hiện tỷ lệ phần trăm Tình trạng sách (Đang mượn / Quá hạn / Đã trả).

Lý do: Donut Chart thể hiện trực quan tỷ lệ các trạng thái trên tổng số phiếu, dễ nhìn thấy phần "Quá hạn" đang chiếm bao nhiêu.

2. Quy tắc 10/20/30:

Slide này chiếm 1/10 tổng số slide.

Thời gian trình bày dự kiến: 2 phút (Tổng 20 phút cho 10 slide).

Font chữ: Tiêu đề 36pt, Nội dung số liệu 30pt.
