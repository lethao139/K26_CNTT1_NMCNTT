# phần 1 pre-push checklist

- kiểm tra `git status` và `git diff` đảm bảo không có file `.env` hay file cấu hình chứa mật khẩu nào bị stage
- dùng lệnh `git grep -i -E "(api_key|password|secret|token|sk-)"` để quét từ khóa nhạy cảm trong code
- cài đặt công cụ quét tự động như `trufflehog` hoặc `gitleaks` chạy trước khi commit
- mở file `.gitignore` xác nhận đã khai báo `.env` và các file cấu hình cục bộ
- rà soát lại toàn bộ lịch sử commit nếu vừa pull code từ nhánh lạ về

# phần 2 cấu trúc file .env.example chuyên nghiệp

```env
# file .env.example
# cấu hình chung
NODE_ENV=development
PORT=3000

# môi trường dev
DEV_API_URL=http://localhost:8080/api
DEV_DB_URI=mongodb://localhost:27017/ecommerce_dev

# môi trường test
TEST_API_URL=https://test-api.ecommerce.com
TEST_DB_URI=mongodb+srv://test_user:your_test_pass@cluster.mongodb.net/ecommerce_test

# môi trường production
PROD_API_URL=https://api.ecommerce.com
PROD_DB_URI=mongodb+srv://prod_user:your_prod_pass@cluster.mongodb.net/ecommerce_prod

# secrets khác
JWT_SECRET=your_jwt_secret_here
STRIPE_SECRET_KEY=your_stripe_key_here
```
# phần 3 hướng dẫn kích hoạt 2fa bắt buộc cho team

- bước 1 vào github organization settings -> chọn security -> authentication security
- bước 2 bật tùy chọn require two-factor authentication
- bước 3 gửi thông báo yêu cầu mọi thành viên vào settings cá nhân -> password and authentication -> enable 2fa using an authenticator app
- bước 4 kiểm tra lại danh sách thành viên trong organization đảm bảo tất cả đều có biểu tượng 2fa màu xanh

# phần 4 báo cáo đánh giá rủi ro nếu thiếu tệp .gitignore

- rủi ro lộ secrets: file .env chứa api key, database uri, jwt secret sẽ bị push lên github public ngay lập tức
- rủi ro tài chính: bot quét github trong 3-5 giây lấy được key và gọi api rác làm đốt sạch tiền thẻ tín dụng
- rủi ro dữ liệu: hacker dùng db uri chiếm quyền database xóa sạch dữ liệu khách hàng hoặc bán lại thông tin
- rủi ro uy tín: đối tác kiểm tra thấy lỗ hổng bảo mật cơ bản sẽ đánh giá dự án thiếu chuyên nghiệp và hủy hợp đồng
