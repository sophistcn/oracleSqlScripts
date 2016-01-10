cd D:\DEV\works\ProD\GTSJ-Service
@call ant build
@echo Íê³É!

xcopy D:\DEV\works\ProD\GTSJ-Service\build\oracle\GTSJ-Service\WEB-INF D:\webapp_ckzbj\app\AppService\WEB-INF /e /Y

rem pause