# SmartFarm Monitor System



## Hướng dẫn chạy script



```powershell

cd scripts

.\auto_report.ps1



# Nếu bị chặn bởi ExecutionPolicy

powershell -ExecutionPolicy Bypass -File .\auto_report.ps1

```



## Checklist kiểm tra thiết bị



- [x] Kiểm tra kết nối mạng

- [x] Kiểm tra dung lượng RAM

- [ ] Kiểm tra thiết bị lưu trữ

- [ ] Kiểm tra log hệ thống



## Bảng thông số phần cứng



| Tên thiết bị | Đơn giá | Loại Storage |

|-------------|----------|-------------|

| Raspberry Pi 4 Model B | 1.450.000 | SSD |

| Intel NUC i3 | 6.200.000 | SSD |

| Orange Pi 5 | 2.300.000 | SSD |



## Phân tích hệ thống



### IPO



**Input**

- File `log-he-thong.log`



**Process**

- Đọc file log

- Lọc các dòng chứa `ERROR` và `CRITICAL`

- Đếm tổng số sự cố

- Ghi kết quả vào báo cáo



**Output**

- File `bao-cao-su-co.txt`



### DIKW



| Phát biểu | Mức |

|------------|------|

| 2026-10-12 08:15:01 [ERROR] sensor-03 Connection TIMEOUT after 30s | Data |

| Hôm nay hệ thống ghi nhận 8 sự cố, trong đó 4 sự cố đến từ sensor-03 | Information |

| Trạm sensor-03 hay mất kết nối vào buổi chiều do sóng yếu, nên cần lắp thêm anten | Knowledge |

| Quyết định thay modem trạm sensor-03 trước thứ Sáu | Wisdom |



## Bẫy phần cứng



**Đề bài:** Tải file log 500MB qua mạng 100Mbps.



### Quy đổi



```text

100 Mbps = 100 / 8 = 12.5 MB/s

```



### Tính thời gian



```text

500 MB / 12.5 MB/s = 40 giây

```



**Kết quả:** Mất khoảng **40 giây** để tải file# SmartFarm Monitor System



## Hướng dẫn chạy script



```powershell

cd scripts

.\auto_report.ps1


powershell -ExecutionPolicy Bypass -File .\auto_report.ps1

```



## Checklist kiểm tra thiết bị



- [x] Kiểm tra kết nối mạng

- [x] Kiểm tra dung lượng RAM

- [ ] Kiểm tra thiết bị lưu trữ

- [ ] Kiểm tra log hệ thống



## Bảng thông số phần cứng



| Tên thiết bị | Đơn giá | Loại Storage |

|-------------|----------|-------------|

| Raspberry Pi 4 Model B | 1.450.000 | SSD |

| Intel NUC i3 | 6.200.000 | SSD |

| Orange Pi 5 | 2.300.000 | SSD |



## Phân tích hệ thống



### IPO



**Input**

- File `log-he-thong.log`



**Process**

- Đọc file log

- Lọc các dòng chứa `ERROR` và `CRITICAL`

- Đếm tổng số sự cố

- Ghi kết quả vào báo cáo



**Output**

- File `bao-cao-su-co.txt`



### DIKW



| Phát biểu | Mức |

|------------|------|

| 2026-10-12 08:15:01 [ERROR] sensor-03 Connection TIMEOUT after 30s | Data |

| Hôm nay hệ thống ghi nhận 8 sự cố, trong đó 4 sự cố đến từ sensor-03 | Information |

| Trạm sensor-03 hay mất kết nối vào buổi chiều do sóng yếu, nên cần lắp thêm anten | Knowledge |

| Quyết định thay modem trạm sensor-03 trước thứ Sáu | Wisdom |



## Bẫy phần cứng



**Đề bài:** Tải file log 500MB qua mạng 100Mbps.



### Quy đổi



```text

100 Mbps = 100 / 8 = 12.5 MB/s

```



### Tính thời gian



```text

500 MB / 12.5 MB/s = 40 giây

```



**Kết quả:** Mất khoảng **40 giây** để tải file

