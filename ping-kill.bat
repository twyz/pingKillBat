@echo off
color a 
title MPolymath's Pinger

echo Hello ! Paste ur IP just here !
set /p IP=Enter Website/IP:
cls
goto:ping

:ping
ping %ip% -n 1 -w 2000 || goto pingFail
echo Ping was Successful to %ip% at %date% %time%
if %ERRORLEVEL%==2 GOTO :EOF
cls
goto ping 
:pingFail
taskkill /IM executablename
goto ping
