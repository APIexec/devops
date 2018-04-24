@echo off
:: Detect system


:: Start script from dedicated system

:: Check PARAM

:: IF %1.==. GOTO No1
:: IF %2.==. GOTO No2
:: ... do stuff...
:: GOTO End1


:: :No2
for %%i in (%*) do (
::  echo %%i
  IF %%i==-i GOTO Info
  IF %%i==-v GOTO Version
  IF %%i==install GOTO Install
)

:Info
  ECHO Info
GOTO End1

:Version
::  ECHO No param 2
  .\os\version.bat
GOTO End1

:Install
::  ECHO No param 2
  .\os\version.bat
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