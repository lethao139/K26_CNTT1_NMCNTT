# phần 1: báo cáo phân tích kiến trúc đa profile
## 1 nguyên nhân văng phiên đăng nhập
- dùng chung 1 profile lưu chung thư mục user data
- các tab dùng chung file cookies nên tab sau đăng nhập đè cookie tab trước gây conflict văng phiên

## 2 mô hình 3 profile
- profile 1 work: bác sĩ trực dùng, theme xanh dương, lưu cookies history carepulse
- profile 2 personal: cá nhân, theme đỏ, lưu lịch sử facebook shopee
- profile 3 sandbox: thực tập sinh test, theme vàng, lưu extension github ptit

# phần 2: thiết kế hệ thống bookmark và quy trình an toàn
## 3 cây thư mục bookmark
- 01_carepulse_clinic: carepulse emr, lịch trực, báo cáo
- 02_pharma_portal: dược thư quốc gia, bhyt, kho thuốc
- 03_medical_tools: google dịch, pubmed, tính chỉ số bmi

## 4 favicon-only: chuột phải bookmark carepulse bhyt dược thư google dịch chọn edit xóa tên chỉ giữ icon

## 5 xử lý bẫy an ninh
- dùng guest profile vì tạo môi trường sạch độc lập tự xóa dữ liệu khi đóng
- cảnh báo bật cloud sync sẽ tự động đẩy dữ liệu bệnh nhân và lịch sử lên máy chủ google gây rò rỉ
