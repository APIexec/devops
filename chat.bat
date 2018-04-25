@echo off
:A
Cls
echo MESSENGER
::set /p c=computername/IP
::set c=Olli-acer
set c=192.168.189.21
::set c=192.168.188.25
::set /p n=User:
::set u=tom
set u=Olli

:: :B
::set /p m=Message:
set m=text tom

msg /server:%c% %u% “%m%”
::Pause
::Goto B


