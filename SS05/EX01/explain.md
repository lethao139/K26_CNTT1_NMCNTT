# Part 1: Error Analysis

1. **Unquoted path with spaces**
   - Example: `mkdir Shopee-Lite Project`
   - PowerShell treats `Project` as an extra positional argument.
   - Error: `A positional parameter cannot be found that accepts argument 'Project'.`

2. **`cd` into a folder that was not created yet**
   - If `mkdir` failed, the folder does not exist.
   - Then `cd Shopee-Lite` gives:
     `Cannot find path '...' because it does not exist.`

3. **Wrong copy/move syntax or wrong relative path**
   - Using `copy` instead of `Copy-Item`, or missing `-Recurse` when copying folders.
   - Running from wrong directory → path not found.

4. **No `-Force` when creating nested folders**
   - If parent folder does not exist, `New-Item` may fail without `-Force`.

# Part 2: Correct 3-line PowerShell Commands

```powershell
New-Item -ItemType Directory -Force -Path "D:\Shopee-Lite\src", "D:\Shopee-Lite\assets", "D:\Shopee-Lite\docs", "D:\Shopee-Lite\tests"
Set-Location "D:\Shopee-Lite"
New-Item -ItemType File -Force -Path "src\main.py", "docs\README.md", "assets\logo.png"
