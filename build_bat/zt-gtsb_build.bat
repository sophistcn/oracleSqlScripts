cd D:\DEV\works\ProD\ZT-GTSB-Service
@call ant build

xcopy D:\DEV\works\ProD\ZT-GTSB-Service\build\oracle\GTSB-Service\WEB-INF D:\webapp_ckzbj\app\AppService\WEB-INF /e /Y


rem pause