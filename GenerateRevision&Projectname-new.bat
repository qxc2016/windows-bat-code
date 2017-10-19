rem "SubWCRev.exe" "%~dp0.." "%~dp0version_template.txt" "%~dp0../vermanage/version.h" %1
rem 如果通过上述语句，生成version.h,最终经过下述删除，增加最后一行语句之后，最后生成的version.h里，
rem 只有#define PROJECT_NAME       “%projectstr%”这一句话，
rem 如果先调用GenerateRevison.bat，生成version.h文件，再执行下述语句，则可以达到删除最后一行
rem 然后增加#define PROJECT_NAME       “%projectstr%”这一句话的话效果
rem 调用GenerateRevison.bat脚本，
call GenerateRevision.bat
type "%~dp0../version/version.h"
echo %type%
@echo off&setlocal enabledelayedexpansion
echo ===开始删除version.h文件里的最后一行，即项目名称宏定义
rem            %~dp0是脚本当前目录，version是上级目录里的文件夹名称，version.h是version文件夹下的文件，该脚本主要是修改version的最后一行，所以要将项目名称的定义放到version.h里的最后一行
for %%i in (%~dp0../version/version.h) do (
set "f=%%i"
for /f "usebackq delims=" %%j in ("!f!") do set/a n+=1
set/a n-=1
for /f "delims=" %%m in ('"type "!f!"|more& cd. 2^>!f!"') do set/a x+=1&if !x! leq !n! echo;%%m>>!f!
set/a n=0,x=0
)
echo ===获取项目名称
cd ..
echo  %cd%
set path=%cd%
set projectstr=%path:~-8%
echo ===项目名称是：%projectstr%
echo ===将项目名称写入到version.h里，在最后一行插入项目名称宏定义
echo #define PROJECT_NAME       “%projectstr%”>>%~dp0../version/version.h
echo ===项目名称写入完成
echo ===更新后的version.h文件内容如下：
cd version
type "version.h"
echo %type%
pause