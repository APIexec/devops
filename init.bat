@ECHO OFF &SETLOCAL
set devops_path=C:\Users\tomaszsapletta\WebstormProjects\devops

more %devops_path%\doc\logo\soft.txt
echo DevOps Project Tool
echo.
echo Initialisation ...
setx path "%path%;C:\Users\tomaszsapletta\WebstormProjects\devops
call doskey do="C:\Users\tomaszsapletta\WebstormProjects\devops\devops.bat" $*
