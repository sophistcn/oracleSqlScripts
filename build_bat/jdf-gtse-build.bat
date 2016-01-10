cd D:\DEV\works\ProD\JDF-GTSE-Service
@call ant build.N6

xcopy D:\DEV\works\ProD\JDF-GTSE-Service\build\oracle\GTSE-Service\WEB-INF D:\webapp_ckzbj\app\AppService\WEB-INF /e /Y


rem pause