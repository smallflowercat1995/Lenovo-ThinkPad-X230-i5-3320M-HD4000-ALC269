@Echo Off
Title ��GitHub�ƶ˸��� Goflyway ��������
cd /d %~dp0
..\..\wget --no-check-certificate https://gitlab.com/free9999/ipupdate/-/raw/master/goflyway/goflyway.bat

if exist goflyway.bat goto startcopy
echo ip����ʧ�ܣ�����������ip����
pause
exit
:startcopy

del "..\goflyway.bat_backup"
ren "..\goflyway.bat"  goflyway.bat_backup
copy /y "%~dp0goflyway.bat" ..\goflyway.bat
del "%~dp0goflyway.bat"
ECHO.&ECHO.�Ѹ����������Goflyway����,�밴�س�����ո���������� &PAUSE >NUL 2>NUL
exit