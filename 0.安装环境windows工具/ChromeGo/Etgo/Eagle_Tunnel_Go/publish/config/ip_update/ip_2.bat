@Echo Off
Title ��Coding.net�ƶ˸��� Trojan ��������
cd /d %~dp0
..\..\..\..\..\wget --no-check-certificate https://cdn.jsdelivr.net/gh/Alvin9999/pac2@latest/etgo/client.conf

if exist client.conf goto startcopy
echo ip����ʧ�ܣ�����������һ������������У��뷴��kebi2014@gmail.com
pause
exit
:startcopy

del "..\client.conf_backup"
ren "..\client.conf"  client.conf_backup
copy /y "%~dp0client.conf" ..\client.conf
del "%~dp0client.conf"

ECHO.&ECHO.�Ѹ���������¿���etgo����,�밴�س�����ո���������� &PAUSE >NUL 2>NUL
exit