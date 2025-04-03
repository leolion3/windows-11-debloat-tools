# Run as Administrator

Write-Host "Optimizing network performance..." -ForegroundColor Yellow

netsh int tcp set global autotuninglevel=normal
netsh int tcp set global rss=enabled
#netsh int tcp set global chimney=enabled - Deprecated
netsh int tcp set global dca=enabled
#netsh int tcp set global netdma=enabled  - Deprecated
netsh int tcp set global ecncapability=disabled

Write-Host "Network optimized!" -ForegroundColor Green
