cd D:\DEV\works\ProD\ZT-GTSB
@call ant build

xcopy D:\DEV\works\ProD\ZT-GTSB\build\oracle\GTSB\GTSB-ROOT D:\webapp_ckzbj\app\SmartPage\GTSB-ROOT /e /Y

xcopy  D:\DEV\works\ProD\ZT-GTSB\build\oracle\GTSB\WEB-INF\classes\* D:\webapp_ckzbj\app\SmartPage\WEB-INF\classes /e/Y

rem pause