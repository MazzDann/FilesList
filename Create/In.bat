@echo off
chcp 65001 >NUL
timeout 2
echo 321
for /f "UseBackQ Delims=" %%A IN ("C:\     .txt") do ( set list=%%A)

dir /a-d /o-d /b /n /T:w >>%list%\list.txt
del "%~nx0"
exit
exit
exit
exit
exit
exit
exit
exit
exit