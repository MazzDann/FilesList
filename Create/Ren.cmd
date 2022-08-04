@echo off
chcp 65001 >NUL
for %%i in ("%cd%") do set "name=%%~ni"
set name=%name: =_%
echo 123
ren In.bat "%name%-FolderName.cmd"
del Ren.cmd
exit