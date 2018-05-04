@ECHO off
FOR /F "eol=; tokens=4 delims=," %%i IN (data.txt) DO (
 SET month=%%i
)
ECHO %month%