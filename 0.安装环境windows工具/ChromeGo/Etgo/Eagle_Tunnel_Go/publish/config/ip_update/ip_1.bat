@Echo Off
Title ��GitHub�ƶ˸��� Trojan ��������
cd /d %~dp0
..\..\..\..\..\wget --no-check-certificate https://gitlab.com/free9999/ipupdate/-/raw/master/etgo/client.conf

if exist client.conf goto startcopy
echo ip����ʧ�ܣ�������ip_2����
pause
exit
:startcopy

del "..\client.conf_backup"
ren "..\client.conf"  client.conf_backup
copy /y "%~dp0client.conf" ..\client.conf
del "%~dp0client.conf"

ECHO.&ECHO.�Ѹ���������¿���etgo����,�밴�س�����ո���������� &PAUSE >NUL 2>NUL
exit