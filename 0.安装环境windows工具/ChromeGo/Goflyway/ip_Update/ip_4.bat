@Echo Off
Title ��COD�ƶ˸��� Goflyway ��������
cd /d %~dp0
..\..\wget --no-check-certificate https://cdn.jsdelivr.net/gh/Alvin9999/pac2@latest/2/goflyway.ini

if exist goflyway.ini goto startcopy
echo ip����ʧ�ܣ�����������ip����
pause
exit
:startcopy

del "..\goflyway.bat_backup"
ren "..\goflyway.bat"  goflyway.bat_backup
copy /y "%~dp0goflyway.ini" ..\goflyway.bat
del "%~dp0goflyway.ini"
ECHO.&ECHO.�Ѹ����������Goflyway����,�밴�س�����ո���������� &PAUSE >NUL 2>NUL
exit