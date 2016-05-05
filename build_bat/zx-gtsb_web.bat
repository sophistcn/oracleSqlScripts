cd D:\DEV\works\Cust_ZX\GTSB
@call ant build

xcopy D:\DEV\works\Cust_ZX\GTSB\build\oracle\GTSB\GTSB-ROOT\*  D:\webapp_ckzbj\app\SmartPage\GTSB-ROOT /e /Y

xcopy  D:\DEV\works\Cust_ZX\GTSB\build\oracle\GTSB\WEB-INF\classes\com\* D:\webapp_ckzbj\app\SmartPage\WEB-INF\classes\com /e/Y

xcopy  D:\DEV\works\Cust_ZX\GTSB\build\oracle\GTSB\WEB-INF\classes\GTSB-CFG\* D:\webapp_ckzbj\app\SmartPage\WEB-INF\classes\GTSB-CFG /e/Y

rem pause