### PHẦN 1: 3 HẬU QUẢ
1. **Mất dữ liệu vĩnh viễn:** Lưu đè (`Ctrl+S`) phá hủy dữ liệu cũ, không có lịch sử để Undo.
2. **Rủi ro mất trắng:** File chỉ nằm trên 1 máy. Hỏng ổ cứng/mất máy là mất toàn bộ dự án.
3. **Xung đột phiên bản:** Gửi qua Zalo (`v1`, `v2_final`, `final_final`) gây rối loạn, dễ nhầm lẫn.

### PHẦN 2: QUY TRÌNH HYBRID WORKFLOW
* **Bước 1 - Đưa lên Cloud:** Chuyển thư mục `D:\Project` vào OneDrive/Google Drive.
* **Bước 2 - Code Local & AutoSave:** Code trực tiếp trên máy bằng VS Code (mượt mà), bật AutoSave để đồng bộ ngầm.
* **Bước 3 - Khôi phục 1-Click:** Khi lỡ xóa nhầm, mở thư mục Cloud -> Chuột phải file -> Chọn **Version History** -> Bấm **Restore**.

