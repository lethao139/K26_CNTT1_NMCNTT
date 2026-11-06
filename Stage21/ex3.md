# P1: ipo

- input
 - ngữ cảnh: người mới học git đang gõ lệnh trong terminal
 - mã lỗi nguyên văn: "fatal: not a git repository (or any of the parent directories): .git"

- process
 - AI dịch nghĩa đen của đoạn tiếng anh sang tiếng việt
 - AI phân tích nguyên nhân gốc rễ là thư mục hiện tại chưa được khởi tạo git hoặc đang đứng sai thư mục
 - AI tổng hợp và trả về 3 bước sửa lỗi cụ thể

- output
 - bản dịch nghĩa: lỗi nghiêm trọng không phải là kho lưu trữ git
 - 3 bước sửa lỗi gồm: kiểm tra lại thư mục đang đứng bằng lệnh pwd, di chuyển vào đúng thư mục dự án bằng cd, hoặc khởi tạo mới bằng lệnh git init

# P2: prompt 
```text
- Tôi là người mới học git và đang thao tác trên terminal. Tôi vừa gõ một lệnh git thì nhận được thông báo lỗi nguyên văn như sau: "fatal: not a git repository (or any of the parent directories): .git". hãy dịch và giải thích ngắn gọn lỗi này bằng tiếng việt, sau đó hướng dẫn tôi 3 bước cụ thể để khắc phục lỗi này ngay bây giờ
```

<img width="267" height="1002" alt="image" src="https://github.com/user-attachments/assets/7e0d2bc8-f170-40b0-b0cd-a6b8345964bb" />
