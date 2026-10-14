# P1:
- Get-childitem = tìm file/folder theo tên, định dạng trong hệ thống tập tin
- Select-string = tìm nội dung trong file <br>
-> Bug: `get-childitem -rescurse -filter "*404*"` là tìm tên file tên 404 -> not found vì không có tên file 404 chỉ có nội dung 404 trong file log
# P2:
```powershell
Select-string -path \.access.log -pattern "error|404" I select-object linenumer, line
