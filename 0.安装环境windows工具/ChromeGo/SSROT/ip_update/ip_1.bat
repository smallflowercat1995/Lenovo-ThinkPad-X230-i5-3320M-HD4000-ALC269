@Echo Off
Title ��GitHub�ƶ˸��� Trojan ��������
cd /d %~dp0
..\..\wget --ca-certificate=ca-bundle.crt -c https://gitlab.com/free9999/ipupdate/-/raw/master/SSROT/config.json

if exist config.json goto startcopy
echo ip����ʧ�ܣ�������ip_2����
pause
exit
:startcopy

del "..\config.json_backup"
ren "..\config.json"  config.json_backup
copy /y "%~dp0config.json" ..\config.json
del "%~dp0config.json"

ECHO.&ECHO.�Ѹ����������SSROT����,�밴�س�����ո���������� &PAUSE >NUL 2>NUL
exit