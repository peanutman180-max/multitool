@echo off
setlocal
title My Multitool
color 0A

:menu
cls

echo(
echo  _      _     _   _____ _ _____ ____  ____  _    
echo / \__/^|/ \ /\/ \ /__ __Y Y__ __Y  _ \/  _ \/ \   
echo ^| ^|\/^|^|^| ^| ^|^|^| ^|   / \ ^| ^| / \ ^| / \^|^| / \^|^| ^|   
echo ^| ^|  ^|^|^| \_/^|^| ^|_/\^| ^| ^| ^| ^| \_/^|^| \_/^|^| ^|_/\ 
echo \_/  \^|\____/\____/\_/ \_/ \_/ \____/\____/\_____/
echo(

echo 1. Show system info
echo 2. Check internet
echo 3. List files
echo 4. Exit
echo(

set /p choice=Choose an option: 

if "%choice%"=="1" goto sysinfo
if "%choice%"=="2" goto internet
if "%choice%"=="3" goto files
if "%choice%"=="4" goto exit

goto menu

:sysinfo
cls
systeminfo
pause
goto menu

:internet
cls
ping google.com
pause
goto menu

:files
cls
dir
pause
goto menu

:exit
exit