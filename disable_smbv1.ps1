# Run as Administrator

Write-Host "Disabling SMBv1..." -ForegroundColor Yellow

Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
Disable-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol" -NoRestart

Write-Host "SMBv1 disabled!" -ForegroundColor Green
