cd D:\DEV\works\ProD\FTS-ZXGJ
@call ant build.n6

xcopy D:\DEV\works\ProD\FTS-ZXGJ\build\oracle\FTS\FTS-ROOT\* D:\webapp_ckzbj\app\SmartPage\FTS-ROOT\ /e /Y

xcopy  D:\DEV\works\ProD\FTS-ZXGJ\build\oracle\FTS\WEB-INF\classes\com\* D:\webapp_ckzbj\app\SmartPage\WEB-INF\classes\com\ /e/Y

xcopy  D:\DEV\works\ProD\FTS-ZXGJ\build\oracle\FTS\WEB-INF\classes\FTS-CFG\* D:\webapp_ckzbj\app\SmartPage\WEB-INF\classes\FTS-CFG\ /e/Y

rem pause