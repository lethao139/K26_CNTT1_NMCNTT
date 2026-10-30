### PHẦN 1: BÁO CÁO PHÂN TÍCH (I/O)

1. **Input:** Lập trình viên nhấn , file được ghi vào ổ cứng Local (SSD).
2. **Process:** Phần mềm Sync (OneDrive/Drive) phát hiện file thay đổi. Nó kiểm tra xem file có nằm trong danh sách **Ignore/Exclude** không.
3. **Upload:** Nếu hợp lệ, file được chia nhỏ (chunking) và đẩy lên Cloud. 
4. **Output:** Cloud xác nhận đồng bộ thành công Hiện **tích xanh** (File đã an toàn trên mây, sẵn sàng giải phóng dung lượng ổ cứng).

### PHẦN 2: THIẾT KẾ & XỬ LÝ BẪY DỮ LIỆU
**1. Xử lý bẫy `node_modules`:**
* Thêm thư mục `node_modules` vào danh sách **Ignore/Exclude** của phần mềm Sync (hoặc file `.gitignore` nếu dùng Git).
* Khi cần code, chạy lệnh `npm install` để tái tạo lại thư mục này dưới Local. Cloud tuyệt đối không chứa `node_modules`.

**2. Sơ đồ tổ chức thư mục Cloud chuẩn:**
```text
📁 Startup_Project (Thư mục gốc)
  📁 01_Code (Chứa source code sạch)
    📁 src
 📁 public
 📄 package.json
  📄 .gitignore (Khai báo bỏ qua node_modules)
 📁 02_Docs (Tài liệu, SRS, Hợp đồng)
 📁 03_Assets (Hình ảnh, Logo, Video)
 📁 04_Config (File cấu hình môi trường)
