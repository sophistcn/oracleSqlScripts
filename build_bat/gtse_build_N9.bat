rd D:\DEV\works\ProD\GTSE-Service\build\oracle /Q /S 

cd D:\DEV\works\ProD\GTSE-Service
@call ant build.N9

xcopy D:\DEV\works\ProD\GTSE-Service\build\oracle\GTSE-Service\WEB-INF\*  D:\n9_servers\fss_sms_services\apache-tomcat-6.0.32\webapps\SMS-Service\WEB-INF\ /e /Y


rem pause