rem "SubWCRev.exe" "%~dp0.." "%~dp0version_template.txt" "%~dp0../vermanage/version.h" %1
rem ���ͨ��������䣬����version.h,���վ�������ɾ�����������һ�����֮��������ɵ�version.h�
rem ֻ��#define PROJECT_NAME       ��%projectstr%����һ�仰��
rem ����ȵ���GenerateRevison.bat������version.h�ļ�����ִ��������䣬����Դﵽɾ�����һ��
rem Ȼ������#define PROJECT_NAME       ��%projectstr%����һ�仰�Ļ�Ч��
rem ����GenerateRevison.bat�ű���
call GenerateRevision.bat
type "%~dp0../version/version.h"
echo %type%
@echo off&setlocal enabledelayedexpansion
echo ===��ʼɾ��version.h�ļ�������һ�У�����Ŀ���ƺ궨��
rem            %~dp0�ǽű���ǰĿ¼��version���ϼ�Ŀ¼����ļ������ƣ�version.h��version�ļ����µ��ļ����ýű���Ҫ���޸�version�����һ�У�����Ҫ����Ŀ���ƵĶ���ŵ�version.h������һ��
for %%i in (%~dp0../version/version.h) do (
set "f=%%i"
for /f "usebackq delims=" %%j in ("!f!") do set/a n+=1
set/a n-=1
for /f "delims=" %%m in ('"type "!f!"|more& cd. 2^>!f!"') do set/a x+=1&if !x! leq !n! echo;%%m>>!f!
set/a n=0,x=0
)
echo ===��ȡ��Ŀ����
cd ..
echo  %cd%
set path=%cd%
set projectstr=%path:~-8%
echo ===��Ŀ�����ǣ�%projectstr%
echo ===����Ŀ����д�뵽version.h������һ�в�����Ŀ���ƺ궨��
echo #define PROJECT_NAME       ��%projectstr%��>>%~dp0../version/version.h
echo ===��Ŀ����д�����
echo ===���º��version.h�ļ��������£�
cd version
type "version.h"
echo %type%
pause