@Echo Off
Title ��Coding.net�ƶ˸��� Trojan ��������
cd /d %~dp0
..\..\wget --no-check-certificate https://cdn.jsdelivr.net/gh/Alvin9999/PAC@latest/SSROT/config.json

if exist config.json goto startcopy
echo ip����ʧ�ܣ�����������һ������������У��뷴��kebi2014@gmail.com
pause
exit
:startcopy

del "..\config.json_backup"
ren "..\config.json"  config.json_backup
copy /y "%~dp0config.json" ..\config.json
del "%~dp0config.json"

ECHO.&ECHO.�Ѹ����������SSROT����,�밴�س�����ո���������� &PAUSE >NUL 2>NUL
exit