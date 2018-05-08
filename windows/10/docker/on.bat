:: show list of docker
echo list of containers
::docker container ls -a --filter "name=docker"
IF [%query%] == [] GOTO List

choice /c ync

If Errorlevel 2 Goto No


If Errorlevel 1 Goto Yes


Goto End

echo %query%




::docker exec -i %query%
echo %params%
echo.
docker exec -i %params%

:List

call docker ps --format "{{.Names}}" > result.txt
IFS=$'\n' read -d '' -r -a lines < result.txt
echo "${lines[@]}"

@echo off
set list=1 2 3 4
(for %%a in (%list%) do (
   echo %%a
))

echo.

:No
Echo You selected No


Goto End
:Yes
Echo You selected Yes


:End