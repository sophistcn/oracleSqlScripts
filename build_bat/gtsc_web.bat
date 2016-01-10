cd D:\DEV\works\ProD\GTSC-Web
@call ant build

xcopy D:\DEV\works\ProD\GTSC-Web\build\oracle\GTSC-Web\GTSC-Web-ROOT D:\webapp_ckzbj\app\SmartPage\GTSC-Web-ROOT /e /Y
rem pause