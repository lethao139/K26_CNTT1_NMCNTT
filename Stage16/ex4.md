# PHẦN 1: GIẢI PHÁP KỸ THUẬT 

* **Thiết lập:** Bật **Files On-Demand**. File trên Cloud chỉ hiện icon (0 byte). Khi cần dùng mới click để tải về . Xong việc chọn **"Free up space"** để đẩy file về Cloud, giải phóng SSD ngay lập tức.
* **Bẫy:** 
  * Bật **Giới hạn băng thông** để không treo mạng nhà trọ.
  * Dùng tính năng **Resume**: Tự động tải tiếp từ điểm đứt khi gập máy/mất mạng, không tải lại từ đầu.

# PHẦN 2: BÁO CÁO DUNG LƯỢNG

* **Sync truyền thống:** Tải 500GB vào SSD 256GB **Tràn ổ cứng, treo máy**.
* **Dùng Files On-Demand:** 
  * SSD chỉ chứa file index: **< 1MB**.
  * Khi mở 10 video (10GB)  SSD còn trống: `256GB - 10GB = 246GB`.
  * Xóa cache SSD trống lại 256GB.
* **Kết luận:** Dung lượng Cloud (500GB) lớn hơn SSD (256GB) nhiều lần nhưng hệ thống vẫn chạy mượt mà không bao giờ bị tràn.
