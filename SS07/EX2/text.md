# Phần 1:
- Get-childitem = tìm file/folder theo tên, định dạng trong hệ thống tập tin
- Select-string = tìm content trong file <br>
-> Bug: `get-childitem -filter "*404*"` là tìm tên file 404 -> not found
# Phần 2:
```powershell
select-string -path .\access.log -pattern "ERROR|404" | select-object linenumber, line
