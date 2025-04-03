# Run as Administrator
# Disabled connecting USB devices to prevent data theft.

Write-Host "Blocking USB storage devices..." -ForegroundColor Yellow

reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR" /v Start /t REG_DWORD /d 4 /f

Write-Host "USB storage devices blocked!" -ForegroundColor Green
