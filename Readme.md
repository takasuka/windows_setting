# Windows Setting Script

## How to use
1. Install winget  
  See https://docs.microsoft.com/en-us/windows/package-manager/winget/     
1. Run PowerShell Sciprt by Administrator
```powershell
Set-ExecutionPolicy AllSigned
winget install Git.Git --silent --accept-package-agreements --accept-source-agreements
git clone hoge.git
cd windows_setting
.\WindwosSetting.ps1 --isInstall true
```


## Import/Export VSCode Extensions
```powershell
code --list-extensions
code --install-extension <extension name>
```



