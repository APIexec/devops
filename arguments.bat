@echo off
:: https://en.wikibooks.org/wiki/Windows_Batch_Scripting
:: Command-line arguments
call :argactionstart %*
echo Arg one: %1 & REM %1, %2, etc. are unmodified in this location
exit /b

:argactionstart
if -%1-==-- goto argactionend
echo %1 & REM Or do any other thing with the argument
shift
goto argactionstart
:argactionend
exit /b



@ECHO OFF
SET /P uname=Please enter your name:
IF "%uname%"=="" GOTO Error
ECHO Hello %uname%, Welcome to DOS inputs!
GOTO End
:Error
ECHO You did not enter your name! Bye bye!!
:End