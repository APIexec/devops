:: -------------------------------------
:: Check Windows Version
:: 4.10   Windows 98
:: 5.0   Windows 2000
:: 5.0 = W2K
:: 5.1 = XP
:: 5.2 = Server 2K3
:: 6.0 = Vista or Server 2K8
:: 6.1 = Win7 or Server 2K8R2
:: 6.2 = Win8 or Server 2K12
:: 6.3 = Win8.1 or Server 2K12R2
:: 0.0 = Unknown or Unable to determine
:: 10.0   Windows 10
:: 6.3   Windows Server 2012
:: 6.3   Windows 8.1    /!\
:: 6.2   Windows 8    /!\
:: 6.1   Windows 7    /!\
:: 6.0   Windows Vista
:: 5.2   Windows XP x64
:: 5.1   Windows XP


:: --------------------------------------
echo Windows

@echo off
for /f "tokens=4-7 delims=[.] " %%i in ('ver') do (if %%i==Version (set v=%%j.%%k) else (set v=%%i.%%j))
echo %v%