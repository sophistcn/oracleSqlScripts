cd D:\DEV\works\ProD\FTS-Service-ZXGJ
@call ant build.oracle

xcopy D:\DEV\works\ProD\FTS-Service-ZXGJ\build\oracle\FTS-Service\WEB-INF\* D:\webapp_ckzbj\app\AppService\WEB-INF\ /e /Y


rem @pause