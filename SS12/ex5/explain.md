PHẦN 1: PHÂN TÍCH (Cơ chế "Google Search" của AutoFilter)
Cơ chế: Giống như Google quét toàn bộ Internet để trả về kết quả khớp với từ khóa, AutoFilter quét toàn bộ các cột dữ liệu (Database) và chỉ hiển thị những hàng (Record) thỏa mãn điều kiện bạn chọn.

Các hàng không khớp sẽ bị ẩn đi (không bị xóa). Nó giúp người dùng "truy vấn" hàng ngàn dòng log an ninh ngay lập tức mà không cần viết code, không làm xáo trộn dữ liệu gốc.

PHẦN 2: TRIỂN KHAI BÁO CÁO
1. File Excel (Kết nối & Chuẩn hóa dữ liệu)

Tại cột Tên mã độc, dùng hàm VLOOKUP kết hợp TRIM để triệt tiêu khoảng trắng thừa:

excel
=VLOOKUP(TRIM(Mã_độc_ID), CoSoDuLieu_Virus!$A$2:$D$100, 2, FALSE)
Kéo công thức tương tự cho cột Mô tả (cột số 3) và Mức độ (cột số 4).

2. File Word (Incident Report)

Bật Navigation Pane (View 
→
→ Navigation Pane) để dễ dàng nhảy đến các phần.

Gán Heading 1 cho các mục lớn: 1. Tóm tắt sự cố, 2. Phân tích kỹ thuật, 3. Biện pháp khắc phục.

Gán Heading 2 cho các mục con: 2.1 Dòng thời gian, 2.2 Hệ thống bị ảnh hưởng.

Chèn Auto TOC. Trước khi lưu, click chuột phải vào TOC 
→
→ Update Field 
→
→ Update entire table để cập nhật đúng số trang.

3. File PowerPoint (Chiến lược phòng thủ 3 tầng)

Font chữ: Bắt buộc dùng Montserrat hoặc Inter (Tuyệt đối không dùng Times New Roman).

Visual: Sơ đồ phân cấp (Kim tự tháp hoặc Flowchart 3 bước từ ngoài vào trong):

Tầng 1 (Vành đai): Firewall, IDS/IPS (Ngăn chặn xâm nhập).

Tầng 2 (Mạng & Thiết bị): EDR, Antivirus (Phát hiện & Diệt mã độc).

Tầng 3 (Dữ liệu & Danh tính): Mã hóa, Xác thực đa yếu tố MFA (Bảo vệ cốt lõi).

Assertion Title: "Phòng thủ đa lớp giúp giảm 90% rủi ro tấn công từ dữ liệu thô."

