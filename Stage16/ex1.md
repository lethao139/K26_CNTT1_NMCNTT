# 1.**Bối cảnh & Vấn đề**
Nhóm của bạn đang thực hiện dự án Số hóa Bảo tàng PTIT. Bạn A chịu trách nhiệm thiết kế 3D các hiện vật. Do thói quen cũ, bạn A chỉ lưu file trên ổ cứng Local và thỉnh thoảng nén gửi qua Zalo. Tối qua, ổ cứng máy bạn A bị lỗi "Bad Sector" khiến file thiết kế quan trọng bị hỏng, trong khi bản gửi trên Zalo đã hết hạn tải về.
<img width="1024" height="559" alt="image" src="https://github.com/user-attachments/assets/f38d591a-d407-43c8-a66a-ddc865fc0b28" />
# 2. **Yêu cầu **
- Thiết kế một quy trình làm việc lai (Hybrid Workflow) đảm bảo file luôn có bản sao lưu tức thời trên Cloud ngay khi nhấn Ctrl + S.

- Xây dựng phương án dự phòng sử dụng Version History để cả nhóm có thể quay ngược thời gian lấy lại bản vẽ ổn định nhất nếu bản hiện tại bị lỗi.

- **Bẫy:** Làm thế nào để đảm bảo dữ liệu không bị đứt đoạt đồng bộ khi máy tính đột ngột mất kết nối Internet hoặc bị sập nguồn giữa chừng?

- Báo cáo phân tích: Sơ đồ luồng dữ liệu từ Local SSD lên Cloud và cách hệ thống xử lý khi có xung đột phiên bản (File Version Conflict).

- Quy trình thực thi: Danh sách 3 bước thiết lập phần mềm đồng bộ chuẩn cho một Designer.

# 3. ** Giai quyết vấn đề **

## PHẦN 1: BÁO CÁO PHÂN TÍCH

**1. Sơ đồ luồng dữ liệu & Xử lý ngắt kết nối (Mất mạng/Sập nguồn):**
* **Luồng:**  (Lưu vào Local SSD) Sync App phát hiện thay đổi  Upload lên Cloud.
* **Xử lý bẫy mất mạng:** Dữ liệu luôn được ghi vào ổ cứng (Local Cache) trước. Nếu mất mạng/sập nguồn, file local vẫn an toàn. Khi có mạng lại, Sync App tự động quét và đồng bộ tiếp phần còn thiếu (Resume). Không đứt đoạn dữ liệu.

**2. Xử lý Xung đột phiên bản (Version Conflict):**
* Khi 2 người cùng sửa 1 file offline Khi đồng bộ, Cloud không ghi đè.
* Hệ thống tự tạo **bản sao xung đột** (VD: `file (conflicted copy).3dm`). Người dùng mở cả 2 bản để so sánh và chọn bản chuẩn.

---

## PHẦN 2: QUY TRÌNH THỰC THI (3 Bước cho Designer)

* **Bước 1 - Đưa vào vùng Cloud:** Di chuyển thư mục làm việc (`D:\PTIT_Museum`) vào thẳng thư mục đồng bộ của OneDrive/Google Drive.
* **Bước 2 - Cấu hình Sync:** Bật **AutoSync**. (Khuyên dùng: Bật tính năng *Files On-Demand* để không tốn dung lượng ổ cứng chứa file cũ).
* **Bước 3 - Kích hoạt Version History:** Click chuột phải vào file thiết kế trên Cloud \(\rightarrow\) Chọn **Version History** để xem và **Restore** (Khôi phục) bản 3D ổn định nhất khi bị lỗi.
