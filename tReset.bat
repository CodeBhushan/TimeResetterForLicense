@echo off

REM :start

REM : Save the current time in a variable
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%a-%%b-%%c)
For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set mytime=%%a:%%b)

:start
REM Displaye current time
echo %mydate%
echo %mytime%

REM Sleep 10 sec
REM Sleep 10
ping -n 10 127.0.0.1 >nul

REM Reset the time
date %mydate%
time %mytime%

goto start