rd D:\webapp_ckzbj\app\FCM /Q /S 
rd D:\DEV\works\ProD\FCM_4.3.6\build\oracle\FCM /Q /S 

cd D:\DEV\works\ProD\FCM_4.3.6
@call ant build.n6.oracle

mkdir D:\webapp_ckzbj\app\FCM
xcopy D:\DEV\works\ProD\FCM_4.3.6\build\oracle\FCM D:\webapp_ckzbj\app\FCM /S /Y

xcopy D:\webapp_ckzbj\app\AppService\WEB-INF\lib\whirlycache-1.0.1.jar D:\webapp_ckzbj\app\FCM\WEB-INF\lib\whirlycache-1.0.1.jar /Q /Y
rem pause