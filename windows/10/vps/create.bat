echo START %app%
echo create new VPS configuration
set name=%query%

echo %app%
echo %command%
echo %name%
set devops_path=C:\Users\tomaszsapletta\WebstormProjects\devops
set data_file=%devops_path%\config\%app%\%name%.txt

SET /P uname=Please enter name:
IF "%uname%"=="" GOTO Error
ECHO Hello %uname% !
set data_content=name: %uname%
echo %data_content% >> %data_file%

GOTO End

:Error
ECHO You did not enter your name! Bye bye!!

:End


::ipconfig /all >> \\server\files\officenetsettings.log
echo END %app%