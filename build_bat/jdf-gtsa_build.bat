cd D:\DEV\works\ProD\JDF-GTSA-Service
@call ant build.N6

xcopy D:\DEV\works\ProD\JDF-GTSA-Service\build\oracle\GTSA-Service\WEB-INF D:\webapp_ckzbj\app\AppService\WEB-INF /e /Y


rem pause