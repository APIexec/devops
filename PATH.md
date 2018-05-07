## Implementation of shortcut

## PAth in Windows

    SETX by default will update your user path.
    SETX ... /M will update your system path.
    %PATH% contains system path with user path appended

Append to User PATH
append_user_path.cmd

    @ECHO OFF
    REM usage: append_user_path "path"
    SET Key="HKCU\Environment"
    FOR /F "usebackq tokens=2*" %%A IN (`REG QUERY %Key% /v PATH`) DO Set CurrPath=%%B
    ECHO %CurrPath% > user_path_bak.txt
    SETX PATH "%CurrPath%";%1
    Append to System PATH
    append_system_path.cmd. Must be run as admin.

(it's basically the same except with a different Key and the SETX /M modifier)

    @ECHO OFF
    REM usage: append_system_path "path"
    SET Key="HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
    FOR /F "usebackq tokens=2*" %%A IN (`REG QUERY %Key% /v PATH`) DO Set CurrPath=%%B
    ECHO %CurrPath% > system_path_bak.txt
    SETX PATH "%CurrPath%";%1 /M


shortcut for windows
DevOps -> DO.bat -> do
https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/doskey
    
    doskey do="C:\Users\***\WebstormProjects\devops\devops.bat" $*

#### Create shortcut
Create a batch file named Q.bat in C:\Windows\System32
Edit the batch file, type 'Exit' and save the file

#### PATH
Debian
Bash Shell
Modify PATH variable
    
    PATH=/usr/local/jdk1.8.0/bin:$PATH
     
export PATH
Save and close the file
Load the startup file
    
    % . /.profile
    
Verify that the path is set by repeating the java command
    
    % java -version

#### Windows
    
    set PATH=%PATH%;C:\xampp\php

#### Windows 7,8
    
    setx path "%path%;C:\Program Files (x86)\Git\bin\"
    setx path "%path%;C:\

https://www.computerhope.com/pathhlp.htm
    PATH [[drive:]path[;...]]
    PATH ;
    
    PATH %PATH%;C:\xampp\php
    path
    path=c:\windows\command
    
####
http://www.instructables.com/id/How-to-Create-your-own-Commands-with-Batch/

Now place it in whatever directory you like and add the directory to PATH in your User variables.

    
    do doc
    
    do install composer