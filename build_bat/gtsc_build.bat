rd D:\DEV\works\ProD\GTSC-Service\build\oracle /Q /S 

cd D:\DEV\works\ProD\GTSC-Service
@call ant build.N6

xcopy D:\DEV\works\ProD\GTSC-Service\build\oracle\GTSC-Service\WEB-INF D:\webapp_ckzbj\app\AppService\WEB-INF /e /Y


rem pause