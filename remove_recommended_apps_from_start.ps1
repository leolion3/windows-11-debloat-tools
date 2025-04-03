# Run as Administrator

Write-Host "Removing 'Recommended' section in Start Menu..." -ForegroundColor Yellow

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Start_TrackProgs /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Start_TrackDocs /t REG_DWORD /d 0 /f

Write-Host "'Recommended' section removed!" -ForegroundColor Green
