@echo off

Title, Remote Reboot& color 0c

:start
set /p MachineName="Enter Machine Name: "

shutdown /r /f /m %MachineName% /t 0

:again
set /p more="Do you have another machine to reboot? (Y/N) "

if "%more%"=="Y" goto start
if "%more%"=="y" goto start
if "%more%"=="n" exit
if "%more%"=="N" exit



pause