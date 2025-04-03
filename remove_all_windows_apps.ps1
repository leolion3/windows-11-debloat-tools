# Run as Administrator
# Uninstalls all preinstalled apps from Windows App Store (Except for Video encoders and MS Paint).

Write-Host "Removing all built-in apps except Defender and Windows Update..." -ForegroundColor Yellow

$apps = Get-AppxPackage -AllUsers | Where-Object { 
    $_.Name -notmatch "Microsoft.WindowsStore|Microsoft.VP9VideoExtensions|Microsoft.WebMediaExtensions|Microsoft.WebpImageExtension|Microsoft.HEVCVideoExtension|Microsoft.HEIFImageExtension|Microsoft.DesktopAppInstaller|Microsoft.ScreenSketch|Microsoft.Paint" 
}

foreach ($app in $apps) {
    Remove-AppxPackage -Package $app.PackageFullName -AllUsers
}

Write-Host "All unnecessary built-in apps removed!" -ForegroundColor Green
