# Run as Administrator

Write-Host "Disabling Remote Desktop..." -ForegroundColor Yellow

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f
Set-Service TermService -StartupType Disabled

Write-Host "Remote Desktop disabled!" -ForegroundColor Green
