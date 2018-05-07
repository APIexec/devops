:: https://github.com/bengarrett/devtidbits.com/blob/master/post_1226/Run%20PHP%20from%20Windows%20command-line/php.cmd
::File: c:\terminal\cmd-scripts\php.cmd
@echo off
@setlocal enableextensions enabledelayedexpansion
set php=c:\terminal\php\php.exe
IF [%1]==[] (
	%php% --version
) ELSE (
	%php% %*
)
endlocal