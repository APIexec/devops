@echo off
git.exe %*
set GITBRANCH=
for /f %%I in ('git.exe rev-parse --abbrev-ref HEAD 2^> NUL') do set GITBRANCH=%%I

if "%GITBRANCH%" == "" (
    prompt $P$G
) else (
    prompt $P $C$E[1;7;32;47m%GITBRANCH%$E[0m$F $G
)