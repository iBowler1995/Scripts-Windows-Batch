@echo off

title, Task Kill& color 40

set /p MachineName="Enter Machine Name: "

tasklist /s %MachineName%

echo.
echo ===============
echo.

:kill
set /p Process="Enter process name: "

taskkill /s %MachineName% /im %Process% /f

set /p more="Do you wish to kill more tasks? (Y/N) "

if "%more%"=="Y" goto kill
if "%more%"=="y" goto kill
if "%more%"=="n" exit
if "%more%"=="N" exit

pause