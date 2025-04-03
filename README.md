# Windows 11 Debloat Tools

This repo contains some PowerShell scripts for debloating Windows 11.

If you'd just like a quick debloat, execute the `debloat.ps1` file **as an admin**. This will run some (but not all) of the scripts.

```powershell
./debloat.ps1
```

For restricting user access, the following scripts can be used:

- `disable_usb_devices.ps1` - Disables connecting USB devices to prevent data theft.
- `prevent_control_panel_access.ps1` - Prevent (standard) user access to the Control Panel and Settings.

For more scripts, feel free to open issues and pull requests :)
