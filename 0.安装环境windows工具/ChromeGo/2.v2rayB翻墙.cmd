%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a 
cls
@echo off
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
CD /D "%~dp0"
start "" "%~dp0v2rayB\v2rayN.exe"
IF EXIST %~dp0Browser\chrome.exe (
    start %~dp0Browser\chrome.exe --user-data-dir=%~dp0chrome-user-data --proxy-server="socks5://127.0.0.1:10808" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1" https://www.google.com
) ELSE (
	%SystemRoot%\System32\reg.exe query "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe" >nul 2>&1
	IF  not errorlevel 1 (
    start chrome.exe --user-data-dir=%~dp0chrome-user-data  --proxy-server="socks5://127.0.0.1:10808" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1"  https://www.google.com
	) else (
		echo Chrome����������ڻ�û����ȷ��װ���볢�����°�װChrome�����
		echo ���߲������°취��
		echo �Ҽ��������Google Chromeͼ�꣬�ٵ����ԣ��ҵ�chrome.exe�ļ���·����Ȼ����Ǹ�Ŀ¼����chrome.exe ��ͬ�Ǹ�Ŀ¼�µ��������ļ��к��ļ���һ�𿽱���ChromeGo�ļ����µ�BrowserĿ¼���棬Ȼ����������ChromeGo�ķ�ǽ�ű���
	)
)
echo ------ע��ע��ע�⣬�ض��ض��ض�------
echo �ر���������ͨ������������������ѷ���Ϊ�������Ѷ��Զ�ץȡ�����Ƕ���ɿ��ԺͰ�ȫ�Բ����κγ�ŵ��
echo 1�����������Chromeҳ��򲻿������������½���������ɫVͼ�꣬��V2rayN�����
echo 2��Ȼ����V2rayN�����棬��Ctrl+A��ѡ�����з�������Ȼ����Ҽ����ٵ㣺���Է������������ӳ٣���ѡ��
echo 3��������Ϻ󣬲��Խ��Ϊ���ֵ��ǿ��÷����������Խ������ԽСԽ��,����Խ����ͷ������;
echo 4�������ѡ��һ�����÷����������س������Ȼ��ص��Ѵ򿪵�chrome�����ˢ��ҳ�棻������򲻿�ҳ��ɴ���쵽�����ķ������������ԣ�
echo 5�������4�������������п��÷����������У���ô��V2rayN���Ͻǡ�����/���¶��ġ���Ȼ���ظ���2-4����
echo ------ע��ע��ע�⣬�ض��ض��ض�------
pause