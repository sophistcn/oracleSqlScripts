rd D:\DEV\works\ProD\FER-Service\build\oracle /Q /S 

cd D:\DEV\works\ProD\FER-Service
@call ant build

xcopy D:\DEV\works\ProD\FER-Service\build\oracle\FER-Service\WEB-INF D:\webapp_ckzbj\app\AppService\WEB-INF /e /Y


rem pause