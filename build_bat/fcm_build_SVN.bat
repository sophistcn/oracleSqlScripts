cd D:\build_svn_tmp\FCM
TortoiseProc.exe /command:update /path:C:\Users\Administrator.16101220-8\Desktop\tmp\FCM

rd D:\webapp_ckzbj\app\FCM /Q /S 
rd D:\build_svn_tmp\FCM\build\oracle\FCM /Q /S 

cd D:\build_svn_tmp\FCM
@call ant build.n6.oracle

mkdir D:\webapp_ckzbj\app\FCM
xcopy D:\build_svn_tmp\FCM\build\oracle\FCM D:\webapp_ckzbj\app\FCM /S /Y


rem pause