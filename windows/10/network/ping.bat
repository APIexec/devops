:: Batch Script
:: color Ping
:: Code By Binbert.com
echo off & cls
set /p IP=Enter your IP Address :
:top
PING  -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET OUT=4F  & echo Request timed out.) ELSE (SET OUT=2F)
color %OUT%
ping -n 2 -l 10 127.0.0.1 >nul
GoTo top

:: write to file
ping 10.1.0.12 > "C:\Users\Tim\Desktop\Ping Results.txt"
ipconfig /all >> \\server\files\officenetsettings.log
ipconfig /all > mynetworksettings.txt