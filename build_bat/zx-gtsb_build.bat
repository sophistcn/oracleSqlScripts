cd D:\DEV\works\Cust_ZX\GTSB-Service
@call ant build

xcopy D:\DEV\works\Cust_ZX\GTSB-Service\build\oracle\GTSB-Service\WEB-INF D:\webapp_ckzbj\app\AppService\WEB-INF /e /Y


rem pause