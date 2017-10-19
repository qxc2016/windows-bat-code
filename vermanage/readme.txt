# windows-bat-code
windows batch code,used to do some repeative work under the inveronment of windows(windows批处理代码，用于在Windows环境下做一些重复的工作)
===============Description of the file under the vermanage=================
1.version_template.txt
the version_template.txt,is a template of the version.h,the SubWCRev.exe through read it,and then create the new file version.h. 
2.SubWCRev.exe
this is app under the TortoiseSVN install path,it can read the version_template.txt,and create the version.h.
3.GenerateRevision.bat
call the SubWCRev.exe,and give two parafilename to SubWCRev.exe,and then the SubWCRev.exe read the template file,create the new file.
4.GenerateRevision&Projectname-new.bat
the GenerateRevision&Projectname-new.bat，used to call the GenerateRevision.bat,delete the last line of version.h,and add a new 
line of the projectname,
===============Description of the file under the version=================
1.version.h
this file is created by the SubWCRev.exe,the content include the Project SVN version num,adn the projectname,
===============vermanage文件夹里的文件内容描述=============================
1.version_template.txt
这是一个模板文件，SubWCRev.exe就是根据这个模板文件生成的version.h文件，
2.SubWCRev.exe
这是一个在TortoiseSVN安装目录下的应用程序，它能够读取模板文件并根据模板文件生成新的version.h文件，
3.GenerateRevision.bat，
调用SubWCRev.exe,给2个文件名作为SubWCRev的参数，然处SubWCRev通过模板version_template.txt在version文件夹下生成version.h。
4.GenerateRevision&Projectname-new.bat
用来调用脚本GenerateRevision.bat，然后删除version.h的最后一行，并在version.h里增加工程名称宏定义。
