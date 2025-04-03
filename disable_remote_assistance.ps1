# Run as Administrator

Write-Host "Disabling Remote Assistance..." -ForegroundColor Yellow

reg add "HKLM\System\CurrentControlSet\Control\Remote Assistance" /v fAllowToGetHelp /t REG_DWORD /d 0 /f

Write-Host "Remote Assistance disabled!" -ForegroundColor Green
