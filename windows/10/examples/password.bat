@Echo off
cls
:password
Set input=
set /p input= Password (input then press enter) :
if %input%==cheese goto YES
if not %input%==cheese goto NO

:YES
Start notepad
start mspaint
Exit

:NO
Echo INCORRECT PASSWORD
pause
goto Password