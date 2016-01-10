@echo off
cd D:\webapp_ckzbj\apache-tomcat-6.0.32_DRS_Portal\conf
del server.xml
copy server-zt.xml server.xml

rem call D:\build_bat\zt-gtsa_build.bat
rem call D:\build_bat\zt-gtsa_web.bat
rem call D:\build_bat\zt-gtse_build.bat
rem call D:\build_bat\zt-gtse_web.bat
call D:\webapp_ckzbj\apache-tomcat-6.0.32_DRS_Portal\bin\startup.bat