@echo off

TITLE Bandeto MW TRACE CLEANER

IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)


REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Requesting administrative privileges...
goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
set params= %*
echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"
exit /B

:gotAdmin
pushd "%CD%"
CD /D "%~dp0"




color 03

echo Welcome to Bandeto MW Trace cleaner
pause



del /s /f "D:\Call of Duty Modern Warfare\Data\config"
del /s /f "D:\Call of Duty Modern Warfare\Data\data\shmem"
del /s /f "D:\Call of Duty Modern Warfare\Data\indices"
del /s /f "D:\Call of Duty Modern Warfare\main\data0.dcache"
del /s /f "D:\Call of Duty Modern Warfare\main\data1.dcache"
del /s /f "D:\Call of Duty Modern Warfare\main\toc0.dcache"
del /s /f "D:\Call of Duty Modern Warfare\main\toc1.dcache"
del /s /f "D:\Call of Duty Modern Warfare\main\recipes\cmr_hist"
del /s /f "D:\Call of Duty Modern Warfare\xpak_cache"
del /s /f "D:\Call of Duty Modern Warfare\telescopeCache"
del /s /f "D:\Call of Duty Modern Warfare\BlizzardBrowser"
del /s /f "C:\ProgramData\NVIDIA Corporation\NV_Cache"

del /s /f "%cwfolder%\telescopeCache\telescope_index.bat"
del /s /f "%cwfolder%\Data\data\shmen"

rmdir ".\main\recipes\cmr_hist" /s /q
rmdir "%userprofile%\documents\Call of Duty Modern Warfare" /s /q
rmdir "%localappdata%\Battle.net" /s /q
rmdir "%localappdata%\Blizzard Entertainment" /s /q
rmdir "%appdata%\Battle.net" /s /q
rmdir "%programdata%\Battle.net" /s /q
rmdir "%programdata%\Blizzard Entertainment" /s /q


del /s /f "C:\Users\%username%\Documents\Call of Duty Black Ops Cold War\archive"
del /s /f "C:\Users\%username%\Documents\Call of Duty Black Ops Cold War\players"
del /s /f "C:\Users\%username%\Documents\Call of Duty Black Ops Cold War\report"
del /s /f "C:\Users\%username%\Documents\Call of Duty Black Ops Cold War"


del /s /f "C:\Users\%username%\AppData\Local\Battle.net\Account\802259981"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\Account\802299369"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\Account\803619482"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_0.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_1.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_2.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_3.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\f_000001.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\index.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\index"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_0"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_1"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_2"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_3"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\f_000001"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\index"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\index.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_0.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_1.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_2.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_3.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_0"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_1"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_2"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_3"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\Cache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\Logs"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\WidevineCdm"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\CachedData"
del /s /f "C:\Users\%username%\AppData\Local\Blizzard Entertainment"
del /s /f "C:\Users\%username%\AppData\Roaming\Battle.net"
del /s /f "C:\ProgramData\Battle.net"
del /s /f "C:\ProgramData\Blizzard Entertainment"



reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Blizzard Entertainment" /f
reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment\Battle.net\Identity" /f
reg delete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\InstallTime" /f
reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment\Battle.net\" /f
reg delete "HKEY_CLASSES_ROOT\battlenet" /f
reg delete "HKEY_CLASSES_ROOT\blizzard" /f
reg delete "HKEY_CLASSES_ROOT\Blizzard.URI.Battlenet" /f
reg delete "HKEY_CLASSES_ROOT\Blizzard.URI.Blizzard" /f
reg delete "HKEY_CLASSES_ROOT\Blizzard.URI.Heroes" /f
reg delete "HKEY_CLASSES_ROOT\Blizzard.URI.SC2" /f
reg delete "HKEY_CLASSES_ROOT\heroes" /f
reg delete "HKEY_CLASSES_ROOT\starcraft" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\DirectInput" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ActivityDataModel" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\battlenet" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\blizzard" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Blizzard.URI.Battlenet" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Blizzard.URI.Blizzard" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Blizzard.URI.Heroes" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Blizzard.URI.SC2" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\heroes" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\starcraft" /f

cls


echo Traces Cleaned
echo Thank you for using Bandeto MW TRACE CLEANER

pause

exit





