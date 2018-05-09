@ECHO OFF
set devops_path=%cd%
::echo %devops_path%

more %devops_path%\doc\logo\soft.txt
echo DevOps Project Tool
echo.
echo Initialisation ...
SET DEVOPSPATH=%cd%
::path
echo %DEVOPSPATH% > %HOMEPATH%\path.txt

ECHO %DEVOPSPATH%
setx path "%path%;%DEVOPSPATH%"
call doskey do=%DEVOPSPATH%"\devops.bat" $*
echo.
call dir
echo Enjoy!
::call cd devops
