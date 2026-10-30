# 1. **Vấn đề**
- Dự án bãi đỗ xe thông minh của nhóm đang bị quản lý chưa chặt chẽ trên Messenger. Các thông báo kỹ thuật về cảm biến bị lẫn lộn giữa các tin nhắn tán gẫu và meme hài hước. Thành viên thường xuyên quên deadline vì tin nhắn bị đè nát.
<img width="1024" height="559" alt="image" src="https://github.com/user-attachments/assets/ef06c159-3e5e-40a3-a0ea-953fa72e8d2c" />
# 2.**Yêu cầu**
- Thiết kế cấu trúc Channels / Topics cho dự án trên Lark hoặc Slack để tách biệt thảo luận kỹ thuật, thông báo và giải trí.

- Áp dụng tính năng Reply in Thread để giữ cho khung chat chính luôn sạch đẹp.

- **Bẫy:** Làm thế nào để giải quyết tình trạng ép rep ngay lập tức khiến các lập trình viên bị mất tập trung khi đang gõ code?

- Sơ đồ kiến trúc kênh: Danh sách các Channel cần có và quy định nội dung cho từng kênh.

- Bản quy ước giao tiếp: 3 quy tắc vàng để tránh No-Hello Trap và spam @all.

# 3.**Giai quyết vấn đề** 

## PHẦN 1: SƠ ĐỒ KIẾN TRÚC KÊNH (CHANNELS)

*   **#01-thong-bao (Announcements):** Chứa Deadline, Milestone, thay đổi yêu cầu. *Quy định: Chỉ Leader/PM được đăng, cấm chat.*
*   **#02-ky-thuat (Tech-Dev):** Chứa code, log lỗi, thảo luận cảm biến. *Quy định: Bắt buộc dùng Reply in Thread cho từng lỗi/bài toán.*
*   **#03-giai-tri (Random):** Chứa meme, tán gẫu, ăn trưa. *Quy định: Đưa mọi rác/câu chuyện phiếm vào đây.*
*   **#04-khan-cap (Emergency):** Sự cố sập hệ thống bãi xe. *Quy định: Chỉ dùng khi thực sự khẩn cấp, tag @here.*

---

## PHẦN 2: 3 QUY TẮC VÀNG GIAO TIẾP (ASYNC)

**1. Tránh "No-Hello Trap" (Hỏi thẳng vào việc):**
*   **Sai:** "Chào mọi người", "Anh Nam ơi" -> Chờ rep -> Mới nói vấn đề.
*   **Đúng:** "Anh Nam ơi, API cảm biến cổng B báo lỗi 500, em cần anh check gấp." (Gộp lời chào + câu hỏi + ngữ cảnh vào 1 tin nhắn).

**2. Cấm lạm dụng `@all` và tôn trọng Thời gian sâu (Deep Work):**
*   Tuyệt đối không tag `@all` cho các vấn đề cá nhân hoặc thông báo không khẩn cấp.
*   **Giải quyết bẫy "Ép rep ngay":** Khuyến khích bật trạng thái (Status) **"Deep Work / Đang Code"** (tắt thông báo). Quy ước: Thời gian phản hồi (SLA) không bắt buộc là 1 phút, mà là **trong vòng 2 giờ**. Chỉ dùng `#04-khan-cap` khi sập hệ thống.

**3. Tuyệt đối dùng "Reply in Thread" (Luồng trả lời):**
*   Mọi thảo luận kỹ thuật dài, gỡ lỗi (debug) phải nằm trong Thread của tin nhắn gốc.
*   Giữ kênh chính (Main Channel) luôn sạch sẽ, không bị trôi tin nhắn quan trọng.
