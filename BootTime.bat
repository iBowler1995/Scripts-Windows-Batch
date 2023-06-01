@echo off

title,Find System Boot Time& color 1e

set /p MachineName="Enter Machine Name: "

SystemInfo /s %MachineName% | Find "Boot Time:"

pause

