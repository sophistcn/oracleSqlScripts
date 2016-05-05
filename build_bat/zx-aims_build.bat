cd D:\DEV\works\ProD_ZX\AIMS
@call ant build.n6

xcopy D:\DEV\works\ProD_ZX\AIMS\build\oracle\AIMS\AIMS-ROOT\* D:\webapp_ckzbj\app\SmartPage\AIMS-ROOT\ /e /Y

xcopy D:\DEV\works\ProD_ZX\AIMS\build\oracle\AIMS\WEB-INF\classes\* D:\webapp_ckzbj\app\SmartPage\WEB-INF\classes\ /e /Y 


rem pause