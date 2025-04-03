# Run as Administrator

# Disable telemetry services
Get-Service DiagTrack, dmwappushservice | Stop-Service -Force
Set-Service DiagTrack -StartupType Disabled
Set-Service dmwappushservice -StartupType Disabled

# Disable scheduled tasks related to telemetry
$tasks = @(
    "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser",
#    "\Microsoft\Windows\Application Experience\ProgramDataUpdater",
    "\Microsoft\Windows\Autochk\Proxy",
    "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator",
    "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip"
)
foreach ($task in $tasks) {
    schtasks /Change /TN $task /Disable
}

# Disable Data Collection Services
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f

# Disable Feedback & Diagnostics
reg add "HKCU\Software\Microsoft\Siuf\Rules" /v NumberOfSIUFInPeriod /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Siuf\Rules" /v PeriodInNanoSeconds /t REG_QWORD /d 0 /f

Write-Host "Telemetry and tracking services disabled." -ForegroundColor Green
