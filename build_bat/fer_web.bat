rd D:\webapp_ckzbj\app\FER-Web /Q /S 
rd D:\DEV\works\ProD\FER-Web\build\oracle\FER-Web /Q /S 

cd D:\DEV\works\ProD\FER-Web
@call ant build.n6

mkdir D:\webapp_ckzbj\app\FER-Web
xcopy D:\DEV\works\ProD\FER-Web\build\oracle\FER-Web D:\webapp_ckzbj\app\FER-Web /S /Y


rem pause