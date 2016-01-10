rd D:\webapp_ckzbj\app\GTSJ-Web
md D:\webapp_ckzbj\app\GTSJ-Web

cd D:\DEV\works\ProD\GTSJ-Web
@call ant build

cd C:\Users\Administrator.16101220-8\Desktop\tmpcode\GTSJ-Web
@call ant build.n6

xcopy D:\DEV\works\ProD\GTSJ-Web\build\oracle\GTSJ-Web D:\webapp_ckzbj\app\GTSJ-Web /e /Y
