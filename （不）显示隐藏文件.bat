@echo off
@(reg Query HKCU\Software\Microsoft\Windows\Currentversion\Explorer\Advanced /v Hidden|findstr "2">nul&&goto s1)||goto s2
:s1
@reg add HKCU\Software\Microsoft\Windows\Currentversion\Explorer\Advanced /v Hidden /t REG_DWORD /d 1 /f >nul
color 0b
echo 显示隐藏 3s后退出
goto s3
:s2
@reg add HKCU\Software\Microsoft\Windows\Currentversion\Explorer\Advanced /v Hidden /t REG_DWORD /d 2 /f >nul
color 0c
echo 不显示隐藏 3s后退出
:s3
@ping 127.1 -n 3 >nul