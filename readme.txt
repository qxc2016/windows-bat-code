# windows-bat-code
windows batch code,used to do some repeative work under the inveronment of windows(windows��������룬������Windows��������һЩ�ظ��Ĺ���)
===============Description of the file under the vermanage=================
1.version_template.txt
the version_template.txt,is a template of the version.h,the SubWCRev.exe through read it,and then create the new file version.h. 
2.SubWCRev.exe
this is app under the TortoiseSVN install path,it can read the version_template.txt,and create the version.h.
3.GenerateRevision.bat
call the SubWCRev.exe,and give two parafilename to SubWCRev.exe,and then the SubWCRev.exe read the template file,create the new file.
4.GenerateRevision&Projectname-new.bat
the GenerateRevision&Projectname-new.bat��used to call the GenerateRevision.bat,delete the last line of version.h,and add a new 
line of the projectname,
===============Description of the file under the version=================
1.version.h
this file is created by the SubWCRev.exe,the content include the Project SVN version num,adn the projectname,
===============vermanage�ļ�������ļ���������=============================
1.version_template.txt
����һ��ģ���ļ���SubWCRev.exe���Ǹ������ģ���ļ����ɵ�version.h�ļ���
2.SubWCRev.exe
����һ����TortoiseSVN��װĿ¼�µ�Ӧ�ó������ܹ���ȡģ���ļ�������ģ���ļ������µ�version.h�ļ���
3.GenerateRevision.bat��
����SubWCRev.exe,��2���ļ�����ΪSubWCRev�Ĳ�����Ȼ��SubWCRevͨ��ģ��version_template.txt��version�ļ���������version.h��
4.GenerateRevision&Projectname-new.bat
�������ýű�GenerateRevision.bat��Ȼ��ɾ��version.h�����һ�У�����version.h�����ӹ������ƺ궨�塣
