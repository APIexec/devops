@ECHO OFF &SETLOCAL
set devops_path=%cd%
echo %devops_path%

more %devops_path%\doc\logo\soft.txt
echo DevOps Project Tool
echo.
echo Initialisation ...
SET var=%cd%
ECHO %var%
setx path "%path%;%var%
call doskey do=%var%"\devops.bat" $*
echo.
echo Enjoy!
cd %var%