@ECHO OFF
SET DEVOPSPATH=%cd%

more %DEVOPSPATH%\doc\logo\soft.txt
echo DevOps Project Tool
echo.
echo Initialisation ...
::path
::echo %DEVOPSPATH% > %HOMEPATH%\path.txt


ECHO %DEVOPSPATH%
setx path "%path%;%DEVOPSPATH%"
call doskey do=%DEVOPSPATH%"\devops.bat" $*
echo.
call dir
echo Enjoy!
::call cd devops
