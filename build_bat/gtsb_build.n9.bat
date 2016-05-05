rd D:\DEV\works\ProD\GTSB-Service\build\oracle /Q /S 

cd D:\DEV\works\ProD\GTSB-Service
@call ant build.n9.oracle

xcopy D:\DEV\works\ProD\GTSB-Service\build\oracle\GTSB-Service\WEB-INF\* D:\n9_servers\fss_sms_services\apache-tomcat-6.0.32\webapps\SMS-Service\WEB-INF\ /e /Y

xcopy D:\DEV\works\ProD\GTSB-Service\build\oracle\GTSB-Service\WEB-INF\* D:\Oracle\Middleware\Oracle_Home\user_projects\domains\fss_sms_services\bs\SMS-Service\WEB-INF /e /Y

rem pause