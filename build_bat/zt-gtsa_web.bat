cd D:\DEV\works\ProD\ZT-GTSA-Web
@call ant build

xcopy D:\DEV\works\ProD\ZT-GTSA-Web\build\oracle\GTSA-Web\GTSA-Web-ROOT D:\webapp_ckzbj\app\SmartPage\GTSA-Web-ROOT /e /Y
rem pause