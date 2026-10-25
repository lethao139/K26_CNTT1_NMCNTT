1.1
- Toàn bộ 7 dòng tiêu đề đang được định dạng thủ công (in đậm, đổi cỡ chữ, màu sắc, tô nền) hoặc để mặc định là style Normal
- Auto TOC: Vì tất cả đang là Normal, Word coi chúng là văn bản bình thường, không phải tiêu đề, dẫn đến TOC trống rỗng ( Table of Contents chỉ quét các đoạn văn được gán thuộc tính Outline Level )

1.2 Tại sao nhầm cấp Heading lại làm sai lệch thụt đầu dòng?
- Nếu "2.1.1. Tiểu ban Kỹ thuật" bị gán nhầm thành H2 (thay vì H3), nó sẽ thụt lề ngang hàng với "2.1. Ban Nội dung" trong mục lục, khiến người đọc hiểu lầm chúng là 2 mục ngang cấp, phá vỡ logic phân cấp (2.1.1 phải là con của 2.1)

2.1 Các bước sửa cấu trúc Heading 
- tiêu đề cần sửa → Gán Heading
  - "1. Thông tin chung..." → Heading 1
  - "1.1. Tên hội nghị" → Heading 2
  - "1.2. Thời gian & địa điểm" → Heading 2
  - "2. Cơ cấu ban tổ chức" → Heading 1
  - "2.1. Ban Nội dung"→Heading 2
  -  "2.1.1. Tiểu ban Kỹ thuật"→Heading 2
  -  "3. Lịch trình sự kiện"→Heading 1
- References → Table of Contents → Automatic Table
2.2 Cập nhật số trang
- Hiện tượng: Mục lục sẽ không tự động cập nhật số trang mới (hiện trang cũ là 2 thay vì 4)
- Thao tác cần làm: Click chuột phải vào bảng Mục lục → Chọn Update Field → Chọn Update entire table (Cập nhật cả tiêu đề và số trang) → OK
- Phím tắt: Click chọn bảng Mục lục → Nhấn phím F9 → Chọn Update entire table → Ấn Enter
  
