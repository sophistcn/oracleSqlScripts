


cd D:\DEV\works\ProD\FCM
@call ant build.n6.oracle



xcopy D:\DEV\works\ProD\FCM\build\oracle\FCM\WEB-INF\classes\com D:\webapp_ckzbj\app\FCM\WEB-INF\classes\com /S /Y
rem pause

rem rd D:\webapp_ckzbj\app\FCM /Q /S 
rem rd D:\DEV\works\ProD\FCM\build\oracle\FCM /Q /S 
rem mkdir D:\webapp_ckzbj\app\FCM
rem xcopy D:\DEV\works\ProD\FCM\build\oracle\FCM D:\webapp_ckzbj\app\FCM /S /Y