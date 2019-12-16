
@echo off

rem для запуска в терминале: ping.cmd ip_адресс путь_к_логу
rem пример: ping.cmd 192.168.0.1 d:\ping.log

@echo start scanning %comp%
@echo insert [ctrl] + [c] for stop scanning
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
