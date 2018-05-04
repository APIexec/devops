@echo off
setlocal

set MYDOCSPATH=\Users\tomaszsapletta\WebstormProjects\devops
set LOGSUBPATH=data\logs
set FILENAME=DailyLog
set FILEEXT=txt

:: Generate date/time stamp
for /F "tokens=1 delims=/ " %%G in ('echo %DATE%') do set WEEKDAY=%%G
for /F "tokens=2 delims=/ " %%G in ('echo %DATE%') do set MONTH=%%G
for /F "tokens=3 delims=/ " %%G in ('echo %DATE%') do set DAY=%%G
for /F "tokens=4 delims=/ " %%G in ('echo %DATE%') do set YEAR=%%G
set YMD=%YEAR%%MONTH%%DAY%
for /F "tokens=1 delims=:." %%G in ('echo %TIME%') do set HOUR=%%G
for /F "tokens=2 delims=:." %%G in ('echo %TIME%') do set MIN=%%G
for /F "tokens=3 delims=:." %%G in ('echo %TIME%') do set SEC=%%G
if %HOUR% LSS 10 set HOUR=0%HOUR%
set HMS=%HOUR%%MIN%%SEC%
set DATETIMESTAMP=%YMD%-%HMS%

set LOGFILE=%MYDOCSPATH%\%LOGSUBPATH%\%FILENAME%.%FILEEXT%
set MESSAGE=%WEEKDAY% %YEAR%-%MONTH%-%DAY% %HOUR%:%MIN%:%SEC% \\ %*
if "%*"=="" (
echo No log message provided.  Displaying contents of log file.
:: TODO create log file
) else (
echo Writing log message: %*

echo %MESSAGE% &gt;&gt; "%LOGFILE%"
)
echo ----------------------------------------------------------------------
type "%LOGFILE%"
echo ----------------------------------------------------------------------
pause

endlocal