<img width="1027" height="866" alt="image" src="https://github.com/user-attachments/assets/12297f33-e1ce-4d43-8669-35a56ad0f190" />
<img width="927" height="677" alt="image" src="https://github.com/user-attachments/assets/a6b4c09d-3f9e-440c-b4dd-80d44caa3f58" />

# Phần 1:

| Tiêu chí | Cookies | Cache |
| --- | --- | --- |
| Dung lượng | Nhỏ (~4KB) | Lớn (MB - GB) |
| Mục đích | Lưu thông tin đăng nhập, token, phiên làm việc | Lưu ảnh, CSS, JS, dữ liệu website |
| Gửi lên Server | Có | Không |
| Duy trì đăng nhập | Có | Không |
| Bảo mật | Có thể cấu hình HttpOnly, Secure | Không dùng để xác thực |
# Phần 2:

```http
Set-Cookie: token=abc123xyz; Mã định danh người dùng
Max-Age=2592000; Cookie tồn tại 30 ngày (Persistent Cookie)
HttpOnly; JavaScript không đọc được Cookie
Secure;  Chỉ gửi Cookie qua HTTPS
SameSite=Strict Hạn chế tấn công CSRF
```
# Phần 3
Hard Reload để xóa Cache đệm
```text
Ctrl + F5
```
Kiểm tra
```text
F12
→ Chuột phải nút Reload
→ Empty Cache and Hard Reload
```
