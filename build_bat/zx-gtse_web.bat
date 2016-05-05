cd D:\DEV\works\ProD_ZX\GTSE-Web
@call ant build

xcopy D:\DEV\works\ProD_ZX\GTSE-Web\build\oracle\GTSE-Web\GTSE-Web-ROOT\* D:\webapp_ckzbj\app\SmartPage\GTSE-Web-ROOT\ /e /Y
rem pause