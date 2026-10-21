# BÀI LÀM – ÔN TẬP NGÀY 2

- **Họ tên:** Le Thao
- **Lớp:** CNTT1
- **Link repository:** https://github.com/lethao139/K26_CNTT1_NMCNTT/tree/main/Pratice_pre_midterm_hackathon/HN-KS26-CNTT1_Nhap-mon-CNTT_OnTap-Ngay2
- **Hệ điều hành (Windows/macOS):** Win

## Bài 1. Lọc log thủ công

### Lệnh đã chạy

```shell
gc logs/access.log | Select-String "ERROR" > logs/error_report.txt
gc logs/error_report.txt
```

### dòng lỗi trong error_report.txt

```text
2025-10-18 08:17:59 [ERROR] Khong tim thay trang /lich-thi (404)
2025-10-18 08:25:55 [ERROR] Het thoi gian cho (timeout)
2025-10-18 08:33:51 [ERROR] Ket noi may chu du lieu that bai
2025-10-18 08:37:19 [ERROR] Ket noi may chu du lieu that bai
2025-10-18 08:49:43 [ERROR] Het thoi gian cho (timeout)
2025-10-18 08:53:11 [ERROR] Het thoi gian cho (timeout)

```

## Bài 2. Đếm bằng pipeline

### Lệnh

```shell
(gc logs\access.log | select-string "WARNING").count
(gc logs\payment.log | select-string "ERROR").count

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
WARNING trong access.log:4
ERROR trong payment.log:3
```

## Bài 3. Chạy script auto_warning (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
Set-ExecutionPolicy -Scope Process Bypass
.\auto_warning.ps1
 Get-Content logs/warning_report.txt
```

### Nội dung file logs/warning_report.txt

```text
2025-10-18 08:13:31 [WARNING] Lop GT01 sap du si so
2025-10-18 08:21:27 [WARNING] Lop GT01 sap du si so
2025-10-18 08:45:15 [WARNING] Thoi gian tai trang cham
2025-10-18 09:21:27 [WARNING] Video bai giang dung luong lon
```

## Bài 4. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
 "=== TONG HOP ACCESS LOG ===" > tong_hop_ngay2.txt
 gc logs\access.log | select-string "ERROR" >> tong_hop_ngay2.txt
 gc logs\payment.log  | select-string "WARNING" >> tong_hop_ngay2.txt
 gc tong_hop_ngay2.txt


```

### Nội dung file logs/tong_hop_ngay2.txt

```text
=== TONG HOP ACCESS LOG ===

2025-10-18 08:17:59 [ERROR] Khong tim thay trang /lich-thi (404)
2025-10-18 08:25:55 [ERROR] Het thoi gian cho (timeout)
2025-10-18 08:33:51 [ERROR] Ket noi may chu du lieu that bai
2025-10-18 08:37:19 [ERROR] Ket noi may chu du lieu that bai
2025-10-18 08:49:43 [ERROR] Het thoi gian cho (timeout)
2025-10-18 08:53:11 [ERROR] Het thoi gian cho (timeout)



2025-10-18 09:19:13 [WARNING] Cong thanh toan phan hoi cham
2025-10-18 09:28:16 [WARNING] Nhieu lan nhap sai ma OTP
2025-10-18 09:43:01 [WARNING] So du vi gan bang hoc phi
2025-10-18 09:46:22 [WARNING] So du vi gan bang hoc phi
2025-10-18 09:49:43 [WARNING] So du vi gan bang hoc phi



2025-10-18 08:17:59 [ERROR] Khong tim thay trang /lich-thi (404)
2025-10-18 08:25:55 [ERROR] Het thoi gian cho (timeout)
2025-10-18 08:33:51 [ERROR] Ket noi may chu du lieu that bai
2025-10-18 08:37:19 [ERROR] Ket noi may chu du lieu that bai
2025-10-18 08:49:43 [ERROR] Het thoi gian cho (timeout)
2025-10-18 08:53:11 [ERROR] Het thoi gian cho (timeout)



2025-10-18 09:19:13 [WARNING] Cong thanh toan phan hoi cham
2025-10-18 09:28:16 [WARNING] Nhieu lan nhap sai ma OTP
2025-10-18 09:43:01 [WARNING] So du vi gan bang hoc phi
2025-10-18 09:46:22 [WARNING] So du vi gan bang hoc phi
2025-10-18 09:49:43 [WARNING] So du vi gan bang hoc phi
```

## Bài 5. Câu hỏi ngắn

- **a)** > ghi đè/tạo file; >> ghi nối vào cuối file
- **b)** Ở Bài 4, nếu lệnh thứ hai (nối các dòng ERROR) dùng > thay cho >>, nội dung file tong_hop_ngay2.txt sẽ bị ghi đè bằng nội dung mới được đẩy vào, nội dung cũ trong file sẽ biến mất hết
- **c)** Đường dẫn tương đối giúp script dễ chạy trên máy khác khi cấu trúc thư mục dự án được giữ nguyên. Không cần sửa đường dẫn tuyệt đối theo tên tài khoản hoặc vị trí thư mục trên từng máy.

## Tự chấm (điền sau khi có đáp án)

- **Điểm tự chấm:** ..../100
- **Lỗi mình đã mắc và cách sửa:**
- 
