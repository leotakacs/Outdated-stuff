echo off

REM this should be your shared folder on your VM. Do not use a trailing slash
REM example x:\
REM or \\vboxsvr\files
set filePath=z:\files

:begin
Setlocal EnableDelayedExpansion
set drvl=!filePath:~0,1!
cd "%filePath%\"
Setlocal DisableDelayedExpansion
echo %drvl%
%drvl%:
echo %cd%

REM COM
if exist "runthis.bat" (
start "" "runthis.bat"
timeout 1
del /f /q "runthis.bat"
) else (
REM nothing
)

REM VBS
if exist "message.vbs" (
start "" "message.vbs"
timeout 1
del /f /q "message.vbs"
) else (
REM nothing
)


timeout 1
goto begin