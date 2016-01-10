cd D:\DEV\works\ProD\GTSA-Web
@call ant build

xcopy D:\DEV\works\ProD\GTSA-Web\build\oracle\GTSA-Web\GTSA-Web-ROOT D:\webapp_ckzbj\app\SmartPage\GTSA-Web-ROOT /e /Y
rem pause