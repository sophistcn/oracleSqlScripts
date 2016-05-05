rd D:\DEV\works\ProD\GTSA-Service\build\oracle /Q /S 

cd D:\DEV\works\ProD\GTSA-Service
@call ant build.n9.oracle

xcopy D:\DEV\works\ProD\GTSA-Service\build\oracle\GTSA-Service\WEB-INF\* D:\n9_servers\fss_sms_services\apache-tomcat-6.0.32\webapps\SMS-Service\WEB-INF\ /e /Y


rem pause