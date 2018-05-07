 Where is my home directory located?
Where a user's home directory is located varies from platform to platform and among the users on a single computer. But the actual location of the home directory is available through special environment variables:
Unix/Linux
    
    $HOME
    
Windows

    %USERPROFILE%

Cygwin

    $USERPROFILE
    
    
    ALLUSERSPROFILE	    Local returns the location of the All Users Profile.
    APPDATA	        Local returns the location where applications store data by default.
    CD	            Local returns the current directory string.
    CMDCMDLINE	    Local returns the exact command line used to start the current cmd.exe.
    CMDEXTVERSION	System returns the version number of the current Command Processor Extensions.
    COMPUTERNAME	System returns the name of the computer.
    COMSPEC	        System returns the exact path to the command shell executable.
    DATE	        System returns the current date. This variable uses the same format as the date /t command. Cmd.exe generates this variable. For more information about the date command, see the Date command.
    ERRORLEVEL	System returns the error code of the most recently used command. A non-0 value usually indicates an error.
    HOMEDRIVE	System returns which local workstation drive letter is connected to the user's home directory. This variable is set based on the value of the home directory. The user's home directory is specified in Local Users and Groups.
    HOMEPATH	System returns the full path of the user's home directory. This variable is set based on the value of the home directory. The user's home directory is specified in Local Users and Groups.
    HOMESHARE	System returns the network path to the user's shared home directory. This variable is set based on the value of the home directory. The user's home directory is specified in Local Users and Groups.
    LOGONSEVER	Local returns the name of the domain controller that validated the current logon session.
    NUMBER_OF_PROCESSORS	System specifies the number of processors installed on the computer.
    OS	            System returns the OS name. Windows XP and Windows 2000 display the OS as Windows_NT.
    PATH	        System specifies the search path for executable files.
    PATHEXT	        System returns a list of the file extensions that the OS considers to be executable.
    PROCESSOR_ARCHITECTURE	    System returns the processor's chip architecture. Values: x86, IA64.
    PROCESSOR_IDENTFIER	    System returns a description of the processor.
    PROCESSOR_LEVEL	            System returns the model number of the computer's processor.
    PROCESSOR_REVISION	    System returns the revision number of the processor.
    PROMPT	        Local returns the command-prompt settings for the current interpreter. Cmd.exe generates this variable.
    RANDOM	        System returns a random decimal number between 0 and 32767. Cmd.exe generates this variable.
    SYSTEMDRIVE	    System returns the drive containing the Windows root directory (i.e., the system root).
    SYSTEMROOT	    System returns the location of the Windows root directory.
    TEMP or TMP	    System and User return the default temporary directories for applications that are available to users who are currently logged on. Some applications require TEMP and others require TMP.
    TIME	        System returns the current time. This variable uses the same format as the time /t command. Cmd.exe generates this variable. For more information about the time command, see the Time command.
    USERDOMAIN	Local returns the name of the domain that contains the user's account.
    USERNAME	Local returns the name of the user currently logged on.
    USERPROFILE	Local returns the location of the profile for the current user.
    WINDIR	    System returns the location of the OS directory