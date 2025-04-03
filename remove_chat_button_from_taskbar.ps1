# Run as Administrator

Write-Host "Removing Chat button from Taskbar..." -ForegroundColor Yellow

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarMn /t REG_DWORD /d 0 /f

Write-Host "Chat button removed!" -ForegroundColor Green
