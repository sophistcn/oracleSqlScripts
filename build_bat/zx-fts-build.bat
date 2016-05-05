cd D:\DEV\works\ProD_ZX\FTS-Service
@call ant build.oracle

xcopy D:\DEV\works\ProD_ZX\FTS-Service\build\oracle\FTS-Service\WEB-INF\* D:\webapp_ckzbj\app\AppService\WEB-INF\ /e /Y


rem pause