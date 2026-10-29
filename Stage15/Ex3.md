### PHẦN 1: PHÂN TÍCH LỖ HỔNG

**1. Nguồn gốc rò rỉ dữ liệu:**
*   **Dòng gây rò rỉ:** Dòng 1 (`08:15 T2` - File `campuspay_beta_users.xlsx`).
*   **Cơ chế:** Tổ hợp **"Editor" + "Anyone with the link"** đã kích hoạt "Cờ Đỏ Bảo mật". Bất kỳ ai có URL (kể cả người ngoài, không cần đăng nhập) đều có thể mở, tải xuống và thậm chí sửa đổi dữ liệu. Link này có thể đã bị lộ ra nhóm Facebook công khai, dẫn đến việc phát tán dữ liệu khách hàng.

**2. 3 giả thuyết người lạ truy cập được `campuspay_api_keys.txt`:**
*   **Giả thuyết 1 (Rò rỉ nội bộ):** Email B (người được cấp quyền) đã tự tải file về hoặc chuyển tiếp (forward) link cho người lạ.
*   **Giả thuyết 2 (Hack tài khoản):** Tài khoản Email B bị xâm nhập (lộ mật khẩu), kẻ gian đăng nhập và truy cập file.
*   **Giả thuyết 3 (Lỗi cấu hình sau đó):** Trưởng nhóm (hoặc ai đó có quyền) đã vô tình đổi phạm vi (Scope) của file sang "Anyone with the link" sau thời điểm 09:30 T2 (dù log không ghi lại, nhưng thực tế có thể xảy ra).

---

### PHẦN 2: SỬA LỖI & NGHIỆM THU

**3. Bảng cấu hình quyền chuẩn:**

| Tên file | Quyền đúng | Phạm vi đúng | Giải thích |
| :--- | :--- | :--- | :--- |
| `campuspay_beta_users.xlsx` | **Viewer** | **Restricted** | Dữ liệu khách hàng tuyệt đối không cho sửa (tránh Editor) và chỉ định danh người xem. |
| `campuspay_api_keys.txt` | **Viewer** | **Restricted** | Chứa API Key cực kỳ nhạy cảm, chỉ chia sẻ cho đúng email (Email B) cần dùng. |
| `slide_pitch_v8.pptx` | **Commenter** | **Restricted** | Nếu là tài liệu nội bộ, chỉ cho phép xem và góp ý, không public ra ngoài. (Nếu cần public, dùng Viewer). |

**4. Bẫy dữ liệu (Vô hiệu hóa link cũ & Expiration Date):**
*   **Cách vô hiệu hóa link cũ nhanh nhất:** Vào phần **Manage Access** của file/thư mục, đổi "General Access" từ "Anyone with the link" về **"Restricted"**. Thao tác này sẽ lập tức hủy bỏ hiệu lực của tất cả các link cũ đã phát tán.
*   **Khi nào dùng 'Set Expiration Date' (Đặt ngày hết hạn):**
    *   Dùng khi chia sẻ cho đối tác ngoài, cộng tác viên thời vụ (VD: chia sẻ trong 7 ngày để họ lấy tài liệu, xong tự động khóa).
    *   Không dùng cho nhân sự chính thức trong team (dùng Restricted + thu hồi thủ công khi họ nghỉ việc).
