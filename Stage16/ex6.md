### PHẦN 1: BẢN ĐẶC TẢ (README)

**1. Thư mục & Bảo mật:**
* `01_Code`: Đồng bộ Cloud (Dev).
* `02_Reports`: Đồng bộ Cloud (Nhà đầu tư).
* `03_Partner`: Đồng bộ Cloud (Đối tác).
* `.env`: **Chỉ lưu Local**, đưa vào `.gitignore`, tuyệt đối không Sync Cloud.

**2. Kênh & Phân quyền (Restricted toàn bộ):**
* `#ky-thuat`: Dev (Editor). Dùng Reply in Thread.
* `#bao-cao`: Nhà đầu tư (Viewer).
* `#doi-tac`: Đối tác thiết bị (Commenter).
* *Bàn giao:* Dùng **Transfer Ownership** khi kết thúc.

---

### PHẦN 2: KHÔI PHỤC FOLDER `sensors` BỊ XÓA

1. **Qua Git:** Mở Terminal, gõ `git restore sensors/` (nếu code chưa commit).
2. **Qua Cloud:** Vào **Thùng rác (Recycle Bin)** Chọn folder `sensors`  Bấm **Restore**.
3. **Qua Version History:** Mở **Version History** thư mục cha  Chọn bản lưu gần nhất  **Restore**.
