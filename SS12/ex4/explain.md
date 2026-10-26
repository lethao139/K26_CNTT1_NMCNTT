PHẦN 1: PHÂN TÍCH (Functional vs Non-functional)
Yêu cầu chức năng (Functional - Khám bệnh): Hệ thống phải cho phép tạo lập hồ sơ bệnh án điện tử, ghi nhận triệu chứng, kê đơn thuốc, quản lý lịch sử khám và tính tiền viện phí.

Yêu cầu phi chức năng (Non-functional - Bảo mật): Dữ liệu phải được mã hóa (AES-256). Hệ thống phải phân quyền chặt chẽ (Bác sĩ, Lễ tân, Admin) và ghi lại nhật ký truy cập (Audit log) mọi thao tác trên hồ sơ bệnh nhân.

PHẦN 2: TRIỂN KHAI HỆ THỐNG
1. File Word (SRS):

Thiết lập Auto TOC.

Dùng Heading 1 cho các chương lớn (VD: 1. Giới thiệu, 2. Yêu cầu chức năng, 3. Yêu cầu bảo mật). Dùng Heading 2, 3 cho các mục nhỏ.

2. File Excel (Quản lý 1000 hồ sơ):

Xử lý bẫy ô trống: Tuyệt đối không để hàng trống (ngắt quãng Filter). Với ô trống (bệnh nhân không điền), dùng công thức IF(A2="", "Không có", A2) hoặc dùng tính năng Find & Replace (để trống 
→
→ "Không có") để chuẩn hóa dữ liệu.

Chuẩn Database: Header duy nhất ở dòng 1, không Merge Cell.

AutoFilter: Bật Ctrl + Shift + L. Khi lọc, các ô "Không có" sẽ gom thành 1 nhóm, giúp bộ lọc không bị ngắt quãng và dễ dàng thống kê.

3. File PowerPoint (Donut Chart):

Assertion Title: "Bệnh hô hấp chiếm 45% tổng số ca khám, cần ưu tiên bổ sung vật tư y tế."

Visual: Dùng Donut Chart (Biểu đồ vòng khuyên) thể hiện tỷ lệ các nhóm bệnh. Thiết kế tối giản, làm nổi bật (highlight) phần màu của bệnh hô hấp, font chữ 
≥
≥ 30pt.

PHẦN 3: KIỂM THỬ (Sửa lỗi Heading)
Vấn đề: Đoạn văn dài bị gán nhầm nhãn Heading, khiến Auto TOC quét nhầm và hiển thị cả đoạn văn vào mục lục.

Cách khắc phục bằng Ctrl + Shift + N:

Bôi đen toàn bộ đoạn văn bản bị lỗi đó.
Nhấn tổ hợp phím Ctrl + Shift + N (Phím tắt đưa văn bản về định dạng Normal mặc định).
Lúc này đoạn văn đã bị tước bỏ nhãn Heading. Bạn có thể dùng các công cụ định dạng thủ công (in đậm, đổi màu) nếu muốn nhưng tuyệt đối không chọn lại Style Heading.
Cuối cùng, vào References 
→
→ Update Table (hoặc nhấn F9) để mục lục tự động xóa bỏ đoạn văn thừa.
