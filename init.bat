@ECHO OFF
SET DEVOPSPATH=%cd%

more %DEVOPSPATH%\doc\logo\soft.txt
echo DevOps Project Tool
echo.
echo Initialisation ...
::path
::echo %DEVOPSPATH% > %HOMEPATH%\path.txt

:: https://de.wikipedia.org/wiki/Umgebungsvariable
export DEVOPSPATH
ECHO %DEVOPSPATH%
call reg query HKEY_CURRENT_USER\Environment
reg query HKEY_CURRENT_USER\Environment /v DEVOPSPATH

setx DEVOPSPATH %DEVOPSPATH%
::call setx path "%path%;%DEVOPSPATH%"
call doskey do=%DEVOPSPATH%"\devops.bat" $*
echo.
call dir
echo Enjoy!
::call cd devops

::.\pop.vbs
call cscript pop.vbs
::x=msgbox("Thank You For DevOps Installation", Button+Icon, "Devops Tool")
