PHẦN 1: TÀI LIỆU WORD BÁO CÁO TỔNG KẾT (Lesson 01)
1. Thiết kế cấu trúc phân cấp Heading & Giải thích logic

Heading 1: 1. Giới thiệu chung

Heading 2: 1.1. Mục tiêu hội nghị

Heading 2: 1.2. Thời gian và Địa điểm

Heading 1: 2. Cơ cấu tổ chức & Tham dự

Heading 2: 2.1. Thành phần tham dự

Heading 2: 2.2. Ban tổ chức

Heading 1: 3. Kết quả và Thống kê

Heading 2: 3.1. Số liệu báo cáo theo Khoa/Viện

Heading 2: 3.2. Giải thưởng

Heading 1: 4. Đánh giá & Kiến nghị

Heading 2: 4.1. Điểm sáng nổi bật

Heading 2: 4.2. Đề xuất cho năm sau

Giải thích logic: Cấu trúc tuân theo mạch báo cáo sự kiện tiêu chuẩn: Bối cảnh (1) 
→
→ Quy mô/Tổ chức (2) 
→
→ Kết quả cốt lõi (3) 
→
→ Đánh giá và Hướng đi tương lai (4). Việc phân cấp H1/H2 giúp người đọc dễ dàng nắm bắt thông tin và Auto TOC sẽ tự động hiển thị đúng cấu trúc này.

2. Viết phần '3. Kết quả và Thống kê'

3. KẾT QUẢ VÀ THỐNG KÊ

Hội nghị Khoa học Sinh viên PTIT 2026 đã khép lại với những kết quả vô cùng ấn tượng, đánh dấu sự trưởng thành vượt bậc trong phong trào nghiên cứu khoa học của sinh viên toàn trường. Dưới đây là bảng tổng hợp số liệu chi tiết:

(Chèn Bảng Word tại đây)

Khoa / Viện	Số báo cáo nộp	Số báo cáo được duyệt	Tỷ lệ duyệt	Giải Nhất
Công nghệ Thông tin	42	38	90%	2 giải
Điện tử - Viễn thông	28	22	79%	1 giải
Kinh tế - Quản lý	19	15	79%	0 giải
Cơ sở chung (năm 1)	11	7	64%	0 giải
TỔNG CỘNG	100	82	82%	3 giải
Nhận xét 3 điểm nổi bật:

Tỷ lệ duyệt toàn trường ấn tượng: Đạt 82% trên tổng số 100 bài nộp, chứng tỏ chất lượng công trình nghiên cứu được đầu tư kỹ lưỡng.

Sự thống trị của khối CNTT: Khoa Công nghệ Thông tin không chỉ dẫn đầu về số lượng nộp (42 bài) mà còn có tỷ lệ duyệt cao nhất (90%) và xuất sắc mang về 2/3 giải Nhất.

Tín hiệu tích cực từ sinh viên năm 1: Dù tỷ lệ duyệt còn khiêm tốn (64%), việc có 11 báo cáo từ khối Cơ sở chung cho thấy sinh viên năm nhất đã rất năng nổ tiếp cận với nghiên cứu khoa học.

Kiến nghị cho hội nghị năm sau:
Ban tổ chức cần mở thêm các buổi "Mentoring" (Hướng dẫn) từ các anh chị khóa trên hoặc giảng viên để hỗ trợ sinh viên năm 1 và khối Kinh tế - Quản lý nâng cao chất lượng bài nộp. Đồng thời, cần duy trì và phát huy vai trò nòng cốt của khối CNTT trong việc dẫn dắt phong trào.

3. Các bước đổi màu toàn bộ Heading 1 sang Navy (#003366)

Trên thanh công cụ Word, chuyển sang tab Home.

Tại khu vực Styles (góc phải), click chuột phải vào ô Heading 1.

Chọn Modify... (Sửa đổi).

Trong hộp thoại hiện ra, chọn biểu tượng Format (góc dưới trái) 
→
→ Chọn Font.

Tại mục Font color, chọn More Colors... 
→
→ Nhập mã Hex 003366 
→
→ Nhấn OK.

Nhấn OK lần nữa để hoàn tất. Toàn bộ các tiêu đề H1 trong văn bản sẽ tự động đổi sang màu xanh Navy.

PHẦN 2: PHÂN TÍCH DỮ LIỆU BẰNG EXCEL (Lesson 02 + 03)
4. Thao tác AutoFilter đa điều kiện

Thao tác:

Bôi đen vùng dữ liệu, nhấn Ctrl + Shift + L để bật Filter.
Tại cột Tỷ lệ duyệt, chọn Number Filters 
→
→ Greater Than or Equal To... 
→
→ Nhập 80%.
Tại cột Giải Nhất, chọn Number Filters 
→
→ Greater Than or Equal To... 
→
→ Nhập 1.
Kết quả lọc: Chỉ có duy nhất Khoa Công nghệ Thông tin (Tỷ lệ 90%, 2 giải Nhất) thỏa mãn cả 2 điều kiện.

5. Công thức VLOOKUP tra cứu Thù lao cho TG015

excel
=IFERROR(VLOOKUP(TRIM("TG015"), DanhMucTacGia!$A$2:$E$100, 5, FALSE), "Chưa cập nhật")
(Lưu ý: Nếu mã TG015 nằm trong một ô nào đó, ví dụ ô C2, ta thay "TG015" bằng TRIM(C2)).

PHẦN 3: SLIDE TRÌNH BÀY TỔNG KẾT (Lesson 04)
6. Thiết kế Storyboard 6 Slide

Slide 1: Tổng quan

Assertion Title: Hội nghị KH Sinh viên PTIT 2026 thành công rực rỡ với quy mô 350 người.

Thông điệp: Quy mô hoành tráng, tổ chức chuyên nghiệp.

Visual: Big Numbers (350 người, 100 bài nộp) kèm hình nền hội trường.

Slide 2: Tỷ lệ duyệt

Assertion Title: Tỷ lệ duyệt đạt 82% khẳng định chất lượng nghiên cứu vượt trội.

Thông điệp: 82/100 bài nộp đạt tiêu chuẩn trình bày.

Visual: Doughnut Chart (Biểu đồ vòng khuyên) thể hiện 82% duyệt - 18% loại. Lý do: Làm nổi bật con số ấn tượng 82%.

Slide 3: Đóng góp của các Khoa

Assertion Title: Khối CNTT dẫn đầu toàn diện về số lượng lẫn chất lượng báo cáo.

Thông điệp: CNTT nộp 42 bài (90% duyệt), bỏ xa các khoa khác.

Visual: Clustered Bar Chart (Cột ghép) so sánh Số nộp và Số duyệt của 4 khoa.

Slide 4: Giải thưởng

Assertion Title: 3 Giải Nhất đã tìm được chủ nhân xứng đáng, khẳng định sự đầu tư nghiêm túc.

Thông điệp: Vinh danh các cá nhân/nhóm xuất sắc nhất.

Visual: Icon cúp vàng kết hợp ảnh trao giải (nếu có) + Text tên giải.

Slide 5: Thành phần tham dự

Assertion Title: Sinh viên chiếm 83% tổng số người tham dự, thể hiện sức hút lớn của hội nghị.

Thông điệp: Sự tham gia đông đảo của SV (290/350).

Visual: Stacked Bar Chart (Biểu đồ thanh xếp chồng) thể hiện cơ cấu 3 nhóm (SV, GV, Khách mời).

Slide 6: Hành động tiếp theo

Assertion Title: Cần nâng cao tỷ lệ duyệt cho sinh viên năm 1 và khối Kinh tế vào năm 2027.

Thông điệp: Định hướng khắc phục điểm yếu (tỷ lệ duyệt khối năm 1 và Kinh tế chỉ 64-79%).

Visual: 3 Action Icons (Mentoring, Workshop, Đầu tư cơ sở vật chất).

7. Bẫy dữ liệu: Tại sao Pie Chart 3D là lựa chọn sai?

Lý do sai:

Hiệu ứng 3D làm bóp méo tỷ lệ thực tế của các lát bánh (các lát ở gần bị phóng to, lát ở xa bị thu nhỏ).

Não bộ con người rất khó so sánh chính xác diện tích/góc của các hình khối 3D nghiêng.

Việc dùng 4 khoa không có nghĩa chúng tạo thành một tổng thể 100% duy nhất (vì mỗi khoa có số lượng báo cáo nộp khác nhau).

Biểu đồ thay thế:

Nên dùng Horizontal Bar Chart (Biểu đồ thanh ngang).

Lý do: Các thanh ngang giúp người xem dễ dàng so sánh độ dài (tỷ lệ duyệt) giữa các khoa với nhau một cách chính xác tuyệt đối, đồng thời dễ dàng sắp xếp từ cao xuống thấp.


