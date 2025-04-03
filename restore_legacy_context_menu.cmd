@echo off
echo Adding registry key...
reg add HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32 /f /ve
echo Restarting explorer... 
taskkill /f /im explorer.exe
sleep 5
start explorer.exe
echo Restored legacy context menu.
