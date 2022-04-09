### Windows Terminal Settings
$InstalledWindowsTerminalSetting = $env:LOCALAPPDATA  + '\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json'
# $WindowsTerminalSettingPath = $env:LOCALAPPDATA  + '\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json'
$BackUpedWindowsTerminalSetting =  $PSScriptRoot + '\..\resorces\WindowsTerminalSetting.json'
Copy-Item -Path $InstalledWindowsTerminalSetting -Destination $BackUpedWindowsTerminalSetting

### VS Code Settings
$BackUpedVsCodeExtensions =  $PSScriptRoot + '\..\resorces\VSCodeExtensions.txt'
code --list-extensions > $BackUpedVsCodeExtensions

$InstalledVsCodeSetting = $env:APPDATA  + '\Code\User\settings.json'
$BackUpedWindowsTerminalSetting =  $PSScriptRoot + '\..\resorces\VSCodeSettings.json'
Copy-Item -Path $InstalledVsCodeSetting -Destination $BackUpedWindowsTerminalSetting