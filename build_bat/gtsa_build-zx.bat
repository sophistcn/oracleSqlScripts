rd D:\DEV\works\ProD\GTSA-Service-ZX\build\oracle /Q /S 

cd D:\DEV\works\ProD\GTSA-Service-ZX
@call ant build.N6

xcopy D:\DEV\works\ProD\GTSA-Service-ZX\build\oracle\GTSA-Service\WEB-INF D:\webapp_ckzbj\app\AppService\WEB-INF /e /Y


rem pause