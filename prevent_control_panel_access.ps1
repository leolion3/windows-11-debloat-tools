# Run as Administrator

Write-Host "Locking Control Panel & Settings..." -ForegroundColor Yellow

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoControlPanel /t REG_DWORD /d 1 /f

Write-Host "Control Panel locked!" -ForegroundColor Green
