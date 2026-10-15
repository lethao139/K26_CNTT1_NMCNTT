# IO, solution

## IO
| Render | Github |
| :--- | :--- | 
| Input | Tên CLB, mô tả ngắn CLB, <br> danh sách ban(tên, leader, email), <br> hướng dẫn gia nhập, <br> Task for new member <br>, deadline, rule |
| Output | readme.md trên github: Heading phân cấp H1/H2, in đậm điểm nổi bật, emoji, <br> table danh sách ban ( mail dạng link), <br> Ordered List 3-5 bước với lệnh git trong Code Block, <br> Task List tối thiểu 5 mục (mix \[x\] đã có sẵn và \[ \] cần làm), <br> Blockquote chứa thông tin deadline và quy tắc ứng xử CLB |   

## solution
| Phần |	Cú pháp Markdown |
| :--- | :---: |
| 1. Giới thiệu CLB	| `#` (H1) cho tên CLB, `##` (H2) cho mục con, `**...**` để in đậm điểm nổi bật |
| 2. Danh sách Ban |	Table pipe hàng phân cách :---, email dạng [email](mailto:...) |
| 3. Hướng dẫn Gia nhập	| Ordered List 1. 2. 3. + Code Block ` ```bash ` chứa lệnh git pipe |
| 4. Checklist	| Task List ` - [x] ` / ` - [ ] ` (tối thiểu 5 mục) |
| 5. Lưu ý quan trọng	 | Blockquote `>` chứa deadline và quy tắc ứng xử |

# Trap 

## <img width="1113" height="40" alt="image" src="https://github.com/user-attachments/assets/1c58a4de-9bfe-406b-b63d-75b4467a7be8" />
- nếu viết theo cú pháp []() thì phần email phải để địa chỉ email để github có thể render đc link
- > fix :
  ```bash
  | Ban Kỹ thuật | A | [a@ptit.edu.vn](mailto:an.nv@ptit.edu.vn) |
  ```
## <img width="1053" height="43" alt="image" src="https://github.com/user-attachments/assets/19054cc0-b6ba-463d-9d54-9db4c0c0b962" />

### Link xong readme dẫn đến :
-  sai protocol (ví dụ htp://): trình duyệt không nhận diện được scheme → click vào sẽ không mở gì cả hoặc báo lỗi "Không thể mở trang"
-  sai domain (ví dụ github.co): link vẫn mở được nhưng dẫn đến trang 404 Not Found hoặc domain giả mạo (rủi ro bảo mật)
-  nếu chứa ký tự đặc biệt như (, ) không escape: Markdown parser có thể cắt sai URL, khiến link bị đứt đoạn

### Hệ thống xử lý
- Github chỉ kiểm tra cú pháp, không kiểm tra URL có tồn tại hay không → link sai vẫn được render như link bình thường
- > fix: <br>
  > Test link bằng cách click trực tiếp trên giao diện GitHub sau khi commit <br>
  > Với URL dài có ký tự đặc biệt, bọc trong <...>: [text](<https://example.com/a(b)c>) <br>
  > Có thể dùng GitHub Actions (ví dụ lycheeverse/lychee-action) để tự động phát hiện broken link mỗi lần push.
