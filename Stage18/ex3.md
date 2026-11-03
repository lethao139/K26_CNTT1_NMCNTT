<img width="1036" height="888" alt="image" src="https://github.com/user-attachments/assets/316573ed-d19a-4c33-bdea-2b2b4f3b7c83" />


# PHẦN 1. PHÂN TÍCH

## 1. Xác định phần tử bị lỗi bằng Inspect Element

**Các bước thực hiện:**

```text
F12 → Chọn biểu tượng Inspect (Ctrl + Shift + C)
→ Click vào khung "Danh Sách Trạm"
```

Trong DOM Tree sẽ xác định được thẻ HTML đang bị chồng lấn.

Ví dụ:

```html
<div class="driver-info">Thông Tin Tài Xế</div>

<div class="station-list">Danh Sách Trạm</div>
```

Từ hình minh họa có thể thấy:

```text
Khung "Danh Sách Trạm"
đang chồng lên
Khung "Thông Tin Tài Xế"
```

---

## 2. Sơ đồ Box Model hiện tại

Vào:

```text
F12 → Computed → Box Model
```

Mô hình:

```text
+-------------------+
|      Margin       |
|  +-------------+  |
|  |   Border    |  |
|  | +---------+ |  |
|  | | Padding | |  |
|  | |Content  | |  |
|  | +---------+ |  |
|  +-------------+  |
+-------------------+
```

Nguyên nhân thường gặp:

```text
Margin = 0
```

hoặc

```text
position: absolute;
```

khiến các khung đè lên nhau.

---

# PHẦN 2. TRIỂN KHAI

## Đề xuất CSS mới

Thử chỉnh trực tiếp trong tab Styles:

```css
.station-list{
    margin-top: 20px;
}
```

Hoặc:

```css
.driver-info{
    margin-bottom: 20px;
}
```

Nếu vẫn bị chồng:

```css
.station-list{
    position: relative;
    top: 20px;
}
```

Kết quả mong muốn:

```text
Thông Tin Tài Xế
       ↓ cách ra

Danh Sách Trạm
```

Hai khung không còn đè lên nhau.

---

# PHẦN 3. KIỂM THỬ

## Thay đổi Margin nhưng phần tử không di chuyển

Kiểm tra trong tab:

```text
F12 → Styles
```

Tìm các thuộc tính đang ghi đè như:

```css
position: absolute;
```

```css
transform: translate(...)
```

```css
display: flex;
```

```css
display: grid;
```

hoặc:

```css
margin: 0 !important;
```

Trong DevTools nếu thuộc tính bị gạch ngang:

```text
margin-top: 20px;
```

thì nghĩa là đang có CSS khác ưu tiên cao hơn ghi đè.

---

# KẾT LUẬN

- Dùng **Inspect Element (Ctrl + Shift + C)** để xác định thẻ HTML lỗi.
- Kiểm tra **Box Model** trong tab **Computed** để xem Content, Padding, Border, Margin.
- Thử tăng **margin-top** hoặc **margin-bottom** trên tab Styles để tách hai khung.
- Nếu Margin không có tác dụng, kiểm tra các thuộc tính ghi đè như:

```css
position: absolute;
transform;
flex;
grid;
!important
```

- Không cần sửa file gốc, chỉ thử nghiệm trực tiếp trên **DevTools (F12)**.
