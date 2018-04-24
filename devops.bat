@echo off
:: Detect system


:: Start script from dedicated system

:: Check PARAM

:: IF %1.==. GOTO No1
:: IF %2.==. GOTO No2
:: ... do stuff...
:: GOTO End1


set app=%2
set command=%1

IF %command%==install GOTO Install
IF %command%==remove GOTO Remove

:: :No2
:: for %%i in (%*) do (
::  echo %%i
::   IF %%i==-i GOTO Info
:: IF %%i==-v GOTO Version
::   IF %%i==install GOTO Install
:: )

:: :Info
:: ECHO Info
:: GOTO End1

:: :Version
::  ECHO No param 2
::   .\os\version.bat
:: GOTO End1

:Install
::  ECHO No param 2
  for /f "tokens=4-7 delims=[.] " %%i in ('ver') do (if %%i==Version (set v=%%j.%%k) else (set v=%%i.%%j))

  IF %v%==10.0 set ver=10
  .\windows\%ver%\%app%\%command%.bat
GOTO End1

:Remove
::  ECHO No param 2
  for /f "tokens=4-7 delims=[.] " %%i in ('ver') do (if %%i==Version (set v=%%j.%%k) else (set v=%%i.%%j))

  IF %v%==10.0 set ver=10
  .\windows\%ver%\%app%\%command%.bat
GOTO End1

:: -i
:: --info
:: -v
:: --version

:: ./os/detect.bat


:No1
  ECHO No param 1
GOTO End1


:End1
echo Bye