@echo off
cd D:\webapp_ckzbj\apache-tomcat-6.0.32_DRS_Portal\conf
del server.xml
copy server-product.xml server.xml

rem call D:\build_bat\product-gtsa_build.bat
rem call D:\build_bat\product-gtsa_web.bat
rem call D:\build_bat\product-gtse_build.bat
rem call D:\build_bat\product-gtse_web.bat
call D:\webapp_ckzbj\apache-tomcat-6.0.32_DRS_Portal\bin\startup.bat