rd D:\DEV\works\ProD\GTSE-Service\build\oracle /Q /S 

cd D:\DEV\works\ProD\GTSE-Service
@call ant build.N6

xcopy D:\DEV\works\ProD\GTSE-Service\build\oracle\GTSE-Service\WEB-INF D:\webapp_ckzbj\app\AppService\WEB-INF /e /Y


rem pause