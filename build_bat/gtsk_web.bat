cd D:\DEV\works\ProD\GTSK-Web
@call ant build

xcopy D:\DEV\works\ProD\GTSK-Web\build\oracle\GTSK-Web\GTSK-Web-ROOT D:\webapp_ckzbj\app\SmartPage\GTSK-Web-ROOT /e /Y
rem pause