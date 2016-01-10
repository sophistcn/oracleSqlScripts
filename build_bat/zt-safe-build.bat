rd D:\webapp_ckzbj\apache-tomcat-6.0.32_DRS_Portal\work\Catalina /s /q

rd D:\DEV\works\ProD\ZT-SafeReport\build\oracle\SAFE /s /q

cd D:\DEV\works\ProD\ZT-SafeReport
@call ant build.n6.oracle
@echo Íê³É!
rem pause

rd  D:\webapp_ckzbj\app\SAFE /s /q

md D:\webapp_ckzbj\app\SAFE

xcopy D:\DEV\works\ProD\ZT-SafeReport\build\oracle\SAFE  D:\webapp_ckzbj\app\SAFE  /e /Y
