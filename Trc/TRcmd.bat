@echo off
chcp 65001 >NUL
timeout 0
for /f "Tokens=* Delims=" %%F in ('"dir /b /s "Ren.cmd" " ') do (
set p=%%~dpF
set ff=%%~nxF
call :fuf
)
timeout 0
for /f "Tokens=* Delims=" %%G in ('"dir /b /s "*-FolderName.cmd"" ') do (
set p=%%~dpG
set ff=%%~nxG
call :fuf
)
for /f "UseBackQ Delims=" %%A IN ("C:\     .txt") do ( set list=%%A)
start %list%\list.txt
del "C:\     .txt"
del "%~nx0"
exit&exit

:fuf
start "" /d "%p%" /MIN /wait "%ff%"
exit /b