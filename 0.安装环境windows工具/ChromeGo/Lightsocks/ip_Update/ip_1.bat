@Echo Off
Title ��GitHub�ƶ˸��� Lightsocks ��������
cd /d %~dp0
..\..\wget --ca-certificate=ca-bundle.crt -c https://gitlab.com/free9999/ipupdate/-/raw/master/lightsocks2/config.ini

if exist config.ini goto startcopy
echo ip����ʧ�ܣ�����������һ������������У��뷴��kebi2014@gmail.com
pause
exit
:startcopy

del "..\config.ini_backup"
ren "..\config.ini"  config.ini_backup
copy /y "%~dp0config.ini" ..\config.ini
del "%~dp0config.ini"
ECHO.&ECHO.�Ѹ����������Lightsocks���ã��밴�������������Զ�����������ʹ������. &PAUSE >NUL 2>NUL
exit

