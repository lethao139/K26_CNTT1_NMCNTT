# 🚀 SMART-FARM: Hệ thống IoT cho Trang trại Lan

Chào mừng bạn đến với hệ thống **Smart-Farm**! Giải pháp công nghệ giúp bạn **theo dõi môi trường**, **tưới tự động**, **cảnh báo kịp thời**, **tiết kiệm chi phí** cho vườn Lan của bạn.

![Sơ đồ tổng quan hệ thống Smart-Farm: Từ cảm biến đến thiết bị điều khiển](https://rikkeiedu-storage.s3.ap-southeast-2.amazonaws.com/uploads/editor-images/1787648283613_687ec2e7-229c-4942-a347-080fae59560a.webp)

## 🛠 Hướng dẫn Cài đặt & Kết nối

Để đưa hệ thống vào hoạt động, bạn cần kết nối Gateway với mạng Internet và chạy đoạn mã khởi tạo kết nối cơ bản sau tại máy chủ trung tâm:

```bash
# Cài đặt phần mềm kết nối IoT
sudo apt update && sudo apt install mosquitto python3-pip -y

# Bật phần mềm và thiết lập tự khởi động
sudo systemctl enable --now mosquitto
```

##  Task list 
- [x] Đăng nhập và xem thông số môi trường (nhiệt độ, độ ẩm, ánh sáng, EC, pH)
- [x] Nhận cảnh báo tự động khi thông số vượt ngưỡng nguy hiểm
- [x] Điều khiển thiết bị (bơm tưới, quạt thông gió, đèn bổ sung) từ xa
- [x] Xuất báo cáo lịch sử dữ liệu ra file Excel/PDF
- [ ] Tự động hóa hoàn toàn chu trình tưới dựa trên độ ẩm đất 

##  Bảng thông số kỹ thuật thiết bị

| Thiết bị | Chức năng | Đơn vị đo | Ngưỡng tối ưu cho Lan |
| :--- | :--- | :--- | :--- |
| Cảm biến Nhiệt độ | Đo nhiệt độ không khí | °C | 20°C - 28°C |
| Cảm biến Độ ẩm đất | Đo lượng nước trong đất | % | 60% - 80% |
| Cảm biến Ánh sáng | Đo cường độ ánh sáng | Lux | 1000 - 1500 Lux |
| Cảm biến EC | Đo độ dẫn điện (dinh dưỡng) | mS/cm | 0.8 - 1.5 mS/cm |

---

##  Chu kỳ Xử lý của CPU (Fetch – Decode – Execute)

> **1. Fetch:** CPU đọc "Độ ẩm đất < 60%" từ cảm biến được lưu trong RAM
>
> **2. Decode:** CPU phân tích tín hiệu này, đối chiếu với lệnh lập trình sẵn để dịch thành tín hiệu điện (GPIO) điều khiển rơ-le
>
> **3. Execute:** CPU gửi xung điện kích hoạt rơ-le đóng mạch, khởi động máy bơm nước tưới cho vườn Lan

---

##  Quy trình chuyển hóa DIKW (Data - Information - Knowledge - Wisdom)

*   **Data (Dữ liệu):** Cảm biến ghi nhận con số thô: `28.6°C`.
*   **Information (Thông tin):** Ứng dụng hiển thị: *"Nhiệt độ hiện tại: 28.6°C - Trạng thái: Cảnh báo (Vượt ngưỡng 28°C)"*.
*   **Knowledge (Kiến thức):** Hệ thống hiểu rằng: *"Lan là loài cây ưa mát, nhiệt độ 28.6°C kéo dài sẽ khiến cây mất nước, héo lá"*.
*   **Wisdom (Trí tuệ):** Hệ thống tự động đưa ra quyết định: *"Bật quạt thông gió và bật hệ thống phun sương làm mát trong 15 phút để hạ nhiệt độ xuống mức an toàn"*.
---

## Lưu ý 
- **XỬ LÝ KHI HỆ THỐNG BỊ CHẬM/TREO (ĐẦY RAM):**
> Nếu App không cập nhật thông số hoặc thiết bị không phản hồi do bộ nhớ đầy, hãy xử lý an toàn theo các bước:
> - **Từ xa:** Mở App Smart-Farm, vào Cài đặt và chọn **"Khởi động lại thiết bị"**.
> - **Trực tiếp:** Rút phích cắm điện của Gateway, chờ **30 giây** rồi cắm lại để hệ thống tự dọn dẹp bộ nhớ.
>  *Tuyệt đối không tháo vỏ thiết bị khi chưa ngắt nguồn điện.*

>  **Hỗ trợ kỹ thuật:** Nếu gặp sự cố, vui lòng liên hệ Hotline: **0988 123 456** hoặc Zalo: *Smart-Farm Support*.
