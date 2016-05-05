rd D:\webapp_ckzbj\app\FER-Web /Q /S 
rd D:\DEV\works\ProD\FER-Web\build\oracle\FER-Web /Q /S 

cd D:\DEV\works\ProD\FER-Web
@call ant build.n6

mkdir D:\webapp_ckzbj\app\FER-Web
xcopy D:\DEV\works\ProD\FER-Web\build\oracle\FER-Web D:\n9_servers\fss_web\apache-tomcat-6.0.32\webapps\FER-Web /S /Y

rem 以下是weblogic的部署
cd D:\DEV\works\ProD\FER-Web
@call ant build.n9
rd D:\Oracle\Middleware\Oracle_Home\user_projects\domains\fss_web_domain\bs\FER-Web\ /Q /S
mkdir D:\Oracle\Middleware\Oracle_Home\user_projects\domains\fss_web_domain\bs\FER-Web
xcopy D:\DEV\works\ProD\FER-Web\build\oracle\FER-Web\* D:\Oracle\Middleware\Oracle_Home\user_projects\domains\fss_web_domain\bs\FER-Web\

rem pause