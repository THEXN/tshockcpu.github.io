:start
chcp 936
@echo off
cls
:start
TShock.Server.exe -ip 0.0.0.0 -port 7777 -world ./性能测试大世界.wld -lang 7
@echo.
@echo 重启服务器...
@echo.
goto start