@echo off
del D:\n9_servers\sms_web\apache-tomcat-6.0.32\conf\server.xml
copy D:\n9_servers\sms_web\apache-tomcat-6.0.32\conf\server-sms1.xml D:\n9_servers\sms_web\apache-tomcat-6.0.32\conf\server.xml

del D:\n9_servers\fss_web\apache-tomcat-6.0.32\conf\server.xml
copy D:\n9_servers\fss_web\apache-tomcat-6.0.32\conf\server-fss1.xml D:\n9_servers\fss_web\apache-tomcat-6.0.32\conf\server.xml

del D:\n9_servers\fss_sms_services\apache-tomcat-6.0.32\conf\server.xml
copy D:\n9_servers\fss_sms_services\apache-tomcat-6.0.32\conf\server-fss1-sms1.xml D:\n9_servers\fss_sms_services\apache-tomcat-6.0.32\conf\server.xml

call D:\n9_servers\fss_sms_services\apache-tomcat-6.0.32\bin\startup.bat
call D:\n9_servers\sms_web\apache-tomcat-6.0.32\bin\startup.bat
call D:\n9_servers\fss_web\apache-tomcat-6.0.32\bin\startup.bat