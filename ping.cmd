
@echo off
@echo ping.cmd ip_address path_logfile
set comp=%1%
set file=%2%
:start
ping %comp% /n 1 | find "TTL">nul
if %ERRORLEVEL% NEQ 0 (
   @echo %time% %date% not connect >> %file%
   <nul set /p strTemp=.
) else (

   <nul set /p strTemp=.
   ping comp /n 1 | find "TTL">nul
)
goto start
