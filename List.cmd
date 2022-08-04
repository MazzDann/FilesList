@echo off
chcp 65001 >NUL

del %cd%\list-files-from-folder.txt
del "C:\     .txt"
echo %cd%\list-files-from-folder.txt>>"C:\     .txt"
echo Which folder files to note(ex: C:\Folder)
set /p Pip="-"
set /p to="8-many;1-one"
timeout 3
goto %to%


:8
for /D %%a in ("%Pip%\*.*") do (xcopy /y /d %cd%\Create\In.bat "%%a\")
for /D %%a in ("%Pip%\*.*") do (xcopy /y /d %cd%\Create\Ren.cmd "%%a\")
xcopy /y /d %cd%\Trc\TRcmd.bat "%Pip%\"
timeout 4
start "" /d "%Pip%\" /min /b TRcmd.bat
exit


F:\Lab\Desant\CreateRes.cmd

:1
xcopy /y /d %cd%\Create\In.bat "%Pip%\"
xcopy /y /d %cd%\Create\Ren.cmd "%Pip%\"
timeout 2
start "" /d "%Pip%\" /min /b Ren.cmd
exit