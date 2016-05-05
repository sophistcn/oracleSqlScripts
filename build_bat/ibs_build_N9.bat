rd D:\DEV\works\ProD\IBS-Service\build\oracle /Q /S 

cd D:\DEV\works\ProD\IBS-Service
@call ant build.oracle

xcopy D:\DEV\works\ProD\IBS-Service\build\oracle\IBS-Service\WEB-INF\*  D:\n9_servers\fss_sms_services\apache-tomcat-6.0.32\webapps\FSS-Service\WEB-INF\ /e /Y


rem pause