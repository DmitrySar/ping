
@echo off
set file=d:\1.txt
set comp=192.168.1.55
:start
ping %comp% /n 1 | find "TTL">nul
if %ERRORLEVEL% NEQ 0 (
   @echo %time% %date% Нет соединения >> %file%
   <nul set /p strTemp=.
) else (

   <nul set /p strTemp=.
   ping comp /n 1 | find "TTL">nul
)
goto start
