PHẦN 1: PHÂN TÍCH LỖI
1. Liệt kê các lỗi vi phạm 5 Quy tắc vàng:

Lỗi 1 (Vi phạm Quy tắc 1): Hàng 1 bị Merge Cell (DANH SÁCH BÁO CÁO VIÊN...).

Hậu quả: AutoFilter không nhận diện được đâu là dòng tiêu đề (Header) thực sự, dẫn đến việc bật Filter bị lỗi hoặc lọc sai cột.

Lỗi 2 (Vi phạm Quy tắc 4): Có một hàng trống (Hàng 5) chen ngang giữa dữ liệu.

Hậu quả: Vùng dữ liệu bị chia cắt. AutoFilter mặc định chỉ quét đến hàng trống đầu tiên, khiến toàn bộ dữ liệu từ hàng 6 trở xuống không được lọc.

Lỗi 3 (Vi phạm Quy tắc 2 & 5): Hàng 5 chứa dòng tổng kết (TỔNG SỐ CNTT: 45) nằm lẫn trong vùng dữ liệu.

Hậu quả: Dòng tổng kết bị coi là một "bản ghi" (record) hợp lệ. Khi Sort (sắp xếp), dòng này sẽ bị đảo lộn lung tung. Khi Filter, nó làm sai lệch kết quả đếm.

Lỗi 4 (Vi phạm Quy tắc 3): Ô C5 chứa cả chữ và số (TỔNG SỐ CNTT: 45).

Hậu quả: Cột "Khoa / Viện" bị trộn lẫn loại dữ liệu (vừa có tên khoa, vừa có câu tổng kết), không thể dùng để tính toán tự động sau này.

2. Tại sao ô B3 chứa 'Trần Thị Bình ' (có khoảng trắng) lại khiến Filter không khớp?

Cơ chế: AutoFilter so sánh chuỗi ký tự một cách tuyệt đối. Khoảng trắng cũng là một ký tự. Do đó, máy tính hiểu "Trần Thị Bình " và "Trần Thị Bình" là 2 giá trị hoàn toàn khác nhau. Khi bạn lọc "Trần Thị Bình", người có khoảng trắng sẽ bị ẩn đi (hoặc ngược lại).

PHẦN 2: SỬA LỖI & NGHIỆM THU
3. Cấu trúc bảng chuẩn (Mô tả lại):

Dòng 1 (Header): STT | Họ và Tên | Khoa / Viện | Điểm Xét Duyệt | Trạng Thái (Tuyệt đối không Merge Cell).

Từ Dòng 2 trở đi: Chỉ chứa dữ liệu báo cáo viên. Không có hàng trống, không có dòng tổng kết chen ngang.

Dòng Tổng (Kết quả): Đặt ở một vùng riêng biệt (ví dụ: bên dưới bảng cách 2 dòng trống, hoặc chuyển sang một Sheet khác, hoặc dùng PivotTable).

4. Xử lý dữ liệu và thao tác lọc chuẩn:

Bước 1: Làm sạch dữ liệu bằng TRIM

Tạo một cột phụ (VD: Cột F).

Tại ô F2, nhập công thức: =TRIM(B2) (giả sử B2 là tên báo cáo viên đầu tiên).

Kéo công thức xuống hết danh sách 
→
→ Copy cột F 
→
→ Chuột phải chọn Paste Special 
→
→ Values đè vào cột B ban đầu 
→
→ Xóa cột F.

Bước 2: Dọn dẹp cấu trúc

Gỡ bỏ Merge Cell ở hàng 1.

Xóa bỏ hoàn toàn dòng 5 (chứa dòng tổng và ô trống) bằng cách chuột phải vào số 5 
→
→ Delete Row.

Bước 3: Thao tác lọc (Filter)

Click chọn một ô bất kỳ trong bảng 
→
→ Nhấn Ctrl + Shift + L để bật AutoFilter (lúc này Filter sẽ phủ toàn bộ bảng).

Tại cột Khoa / Viện, bỏ chọn tất cả, chỉ tick chọn CNTT.

Tại cột Điểm Xét Duyệt, chọn Number Filters 
→
→ Greater Than or Equal To... 
→
→ Nhập 8.0.

Kết quả: Bảng sẽ hiển thị chính xác danh sách CNTT có điểm từ 8.0 trở lên.


