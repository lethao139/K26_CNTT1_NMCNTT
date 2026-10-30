# 1.**Bối cảnh & Vấn đề**
Startup của bạn đang lưu trữ danh sách CV ứng viên chứa SĐT và mức lương kỳ vọng. Trưởng phòng nhân sự muốn chia sẻ file này cho các trưởng bộ phận để xem và nhận xét, nhưng một nhân viên đã vô tình gửi link với quyền Editor cho một ứng viên bên ngoài.
![](https://rikkeiedu-storage.s3.ap-southeast-2.amazonaws.com/uploads/editor-images/1787709550905_e53830f5-bf39-4fca-97c3-99ed25668c7e.webp)
# 2.**Yêu cầu**

- Áp dụng Quy tắc Cờ Đỏ Bảo mật để thiết lập lại toàn bộ quyền truy cập cho tệp danh sách ứng viên.

- Sử dụng tính năng Suggesting Mode để các trưởng bộ phận có thể góp ý mà không làm thay đổi dữ liệu gốc khi chưa được duyệt.

- **Bẫy:** Nếu ứng viên đã nhận được link quyền Editor, làm thế nào để thu hồi quyền ngay lập tức và kiểm tra xem họ đã kịp copy hay tải dữ liệu về chưa?

- Bản thiết kế phân quyền: Bảng phân loại đối tượng tương ứng với các mức quyền truy cập an toàn nhất.

- Kịch bản xử lý sự cố: Quy trình 3 bước xử lý khi phát hiện dữ liệu bị chia sẻ sai quyền.

# 3. **Giai quyết vấn đề**

## PHẦN 1: BẢN THIẾT KẾ PHÂN QUYỀN

| Đối tượng | Mức quyền (Role) | Phạm vi (Scope) | Ghi chú |
| :--- | :--- | :--- | :--- |
| **Trưởng phòng HR** | **Editor** | **Restricted** | Người quản lý, có quyền duyệt và sửa dữ liệu gốc. |
| **Trưởng bộ phận** | **Commenter (Suggesting Mode)** | **Restricted** (Chỉ định Email) | Chỉ xem và để lại bình luận/góp ý, không sửa trực tiếp. |
| **Ứng viên** | **Không cấp quyền** | **Restricted** | Tuyệt đối không public "Anyone with the link". |

---

## PHẦN 2: KỊCH BẢN XỬ LÝ SỰ CỐ (Quy trình 3 bước)

**Bước 1: Thu hồi quyền ngay lập tức (Revoke)**
* Vào **Share**, đổi General Access về **Restricted**.
* Tìm Email ứng viên trong danh sách và bấm **Remove** .

**Bước 2: Rà soát nhật ký truy cập (Access Audit)**
* Mở file, vào **File Info / Activity Dashboard**.
* Kiểm tra xem ứng viên đã kịp xem, tải về hay in trước khi bị thu hồi quyền hay chưa.

**Bước 3: Xử lý hậu quả*
* Nếu **chưa tải về**: Ghi nhận sự cố, nhắc nhở nội bộ.
* Nếu **đã tải về**: Liên hệ ngay với ứng viên yêu cầu xóa dữ liệu, thông báo cho bộ phận IT/Legal.
