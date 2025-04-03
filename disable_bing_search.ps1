# Run as Administrator

Write-Host "Disabling Bing search in Start Menu..." -ForegroundColor Yellow

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v CortanaConsent /t REG_DWORD /d 0 /f

Write-Host "Bing search disabled!" -ForegroundColor Green
