rd D:\webapp_ckzbj\app\FCM /Q /S 
rd D:\DEV\works\ProD\FCM\build\oracle\FCM /Q /S 

cd D:\DEV\works\ProD\FCM
@call ant build.n6.oracle

mkdir D:\webapp_ckzbj\app\FCM
xcopy D:\DEV\works\ProD\FCM\build\oracle\FCM D:\webapp_ckzbj\app\FCM /S /Y


rem pause