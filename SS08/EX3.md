# P1: 
File log (text) <br>
| <br>
| <br>
Select-string -pattern 'TIMEOUT' <br>
| đọc file + lọc các dòng chứa TIMEOUT <br>
| trả object matchinfo <br>
Where-object { $_.Line -notmatch 'Not TIMEOUT' } <br>
| bỏ các object chứa "NOT TIMEOUT" <br>
| <br>
1 con số duy nhất
# P2:
```powershell
Select-String -Path .\log-hom-nay.txt -Pattern 'TIMEOUT' | Where-Object { $_.Line -notmatch 'NOT TIMEOUT' } | Measure-Object | Select-Object -ExpandProperty Count
