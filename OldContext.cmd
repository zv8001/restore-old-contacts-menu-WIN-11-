::Restore the old Context Menu in Windows 11
::Made by zv800
:: https://www.zv800.com/
:: https://youtube.com/c/Core533

@echo off
:start
cls
echo Restore the old Context Menu in Windows 11
echo Made by zv800
echo https://www.zv800.com/
echo https://youtube.com/c/Core533
echo.
echo type 1 to have the Windows 10 contact menu
echo type 2 to have the Windows 11 contact menu

set /p OP="Type:"

if %OP% == 1 goto Set10
if %OP% == 2 goto Set11
goto ERROR

:Set10
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
goto FixExp


:Set11
reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
goto FixExp


:FixExp
taskkill /f /im explorer.exe
start explorer.exe
exit

:ERROR
echo invalid input
pause
goto start