echo off

REM this should be your shared folder. Do not use a trailing slash
REM example C:\Users\MyUser\Desktop\SharedFolder
set folderPath=C:\Users\%username%\Desktop\VM Files

cd "%folderPath%\"
:begin
cls
set /p ent=Enter command or message ^(command must include "exe"^): 




echo %ent% | findstr /i "exe">nul
if %errorlevel%==1 (
echo msgbox "%ent%" > "message.vbs"
) else (
echo start "" "%ent%"   ^&^& exit                        > "runthis.bat"
) 




goto begin