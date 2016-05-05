@echo off
cd D:\webapp_ckzbj\apache-tomcat-6.0.32_DRS_Portal\conf
del server.xml
copy server-product-fer.xml server.xml

call D:\webapp_ckzbj\apache-tomcat-6.0.32_DRS_Portal\bin\startup.bat