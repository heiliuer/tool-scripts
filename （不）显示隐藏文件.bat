@echo off
@(reg Query HKCU\Software\Microsoft\Windows\Currentversion\Explorer\Advanced /v Hidden|findstr "2">nul&&goto s1)||goto s2
:s1
@reg add HKCU\Software\Microsoft\Windows\Currentversion\Explorer\Advanced /v Hidden /t REG_DWORD /d 1 /f >nul
color 0b
echo ��ʾ���� 3s���˳�
goto s3
:s2
@reg add HKCU\Software\Microsoft\Windows\Currentversion\Explorer\Advanced /v Hidden /t REG_DWORD /d 2 /f >nul
color 0c
echo ����ʾ���� 3s���˳�
:s3
@ping 127.1 -n 3 >nul