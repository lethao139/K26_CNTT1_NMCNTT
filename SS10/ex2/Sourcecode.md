# Hướng dẫn cài đặt Cảm biến độ ẩm cho Trang trại Lan

## 1. Tổng quan thiết bị

### Cảm biến độ ẩm giúp theo dõi độ ẩm không khí trong nhà lưới, đảm bảo môi trường tối ưu cho Lan phát triển.

### Thiết bị cần chuẩn bị bao gồm:
- Cảm biến độ ẩm (DHT22 / AM2302)
- Raspberry Pi/ Jetson/ SoC
- Dây nối Dupont
- Tua vít, băng keo, ốc vít
- Thẻ nhớ đã cài hệ điều hành
  
### Bảng so sánh cảm biến

| Tiêu chí | Cảm biến cũ (DHT11) | Cảm biến mới (DHT22) |
| :--- | :--- | :--- |
| **Độ chính xác** | Thấp (±5%) | Cao (±2%) |
| **Dải đo độ ẩm** | 20% - 80% | 0% - 100% |
| **Khoảng cách đo** | Ngắn (tối đa 20m) | Dài hơn (tối đa 30m) |
| **Giá thành** | Rẻ | Đắt hơn |

## 2. Các bước cài đặt

1. **Cập nhật hệ thống:** Mở Terminal và cập nhật danh sách gói.
   ```powershell
   sudo apt update && sudo apt upgrade -y
   ```
2. **Cài đặt thư viện cho cảm biến DHT22:** Cài đặt thư viện đọc dữ liệu từ cảm biến.
   ```powershell
   sudo apt install -y git python3-pip
   sudo pip3 install Adafruit_DHT
   ```
3. **Kích hoạt giao tiếp 1-Wire (nếu dùng DHT22):** Bật giao tiếp 1-Wire trên hệ thống.
   ```powershell
   sudo raspi-config
   # Chọn: Interface Options > 1-Wire > Enable
   ```
4. **Kiểm tra module đã được nhận :** Sau khi baath 1-Wire, kiểm tra thiết bị.
   ```powershell
   ls /sys/bus/w1/devices/ # Kết quả có dạng 28-xxxxxxx
   ```
5. **Chạy thử Chương trình đọc cảm biến:** Tải về chạy file Python mẫu.
   ```python
   git clone https://github.con/adafruit/Adafruit_Python_DHT.git
   cd Adafruit_Python_DHT/examples
   ```
   
   ```python
   python3 AdafruitDHT.py 22 4 #22: DHT22, 4: GPIO pin
                               # Nhận kết quả độ ấm và nhiệt độ
   ```
6. **Tự động chạy khi khởi động**(tùy chọn): Thêm vào crontab để đọc dữ liệu định kỳ.
   ```python
   crontab -e                #Thêm dòng (ví dụ mỗi 5 phút):
                             */5 * * * * python3 /home/pi/read_dht22.py
   ```
## 3. Sơ đồ kết nối

## 6. Task List kiểm tra thiết bị

- [x] Chuẩn bị mạch Raspberry Pi 4
- [x] Mua cảm biến DHT22
- [x] Kiểm tra dây nối Dupont
- [ ] Cài đặt môi trường Python và thư viện
- [ ] Chạy thử script điều khiển máy bơm
- [ ] Lắp đặt cảm biến tại vị trí thoáng mát trong nhà lưới
