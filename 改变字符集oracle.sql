


oracle数据库的字符集更改 


A、oracle server 端 字符集查询 


select userenv('language') from dual 


其中NLS_CHARACTERSET 为server端字符集 


NLS_LANGUAGE 为 server端字符显示形式 


B、查询oracle client端的字符集 


$echo $NLS_LANG 

如果发现你select 出来的数据是乱码，请把client端的字符集配置成与linux操作系统相同的字符集。如果还是有乱码，则有可能是数据库中的数据存在问题，或者是oracle服务端的配置存在问题。 


C、server端字符集修改 


***************************************************************** 


*  更改字符集步骤方法(WE8ISO8859P1 --> ZHS16GBK)            * 


***************************************************************** 


SQL> 

将数据库启动到RESTRICTED模式下做字符集更改： 

SQL> conn /as sysdba 

Connected. 

SQL> shutdown immediate; 

Database closed. 

Database dismounted. 

ORACLE instance shut down. 

SQL> startup mount 

ORACLE instance started. 

Total System Global Area  236000356 bytes 

Fixed Size                   451684 bytes 

Variable Size             201326592 bytes 

Database Buffers           33554432 bytes 

Redo Buffers                 667648 bytes 

Database mounted. 

SQL> ALTER SYSTEM ENABLE RESTRICTED SESSION; 

System altered. 

SQL> ALTER SYSTEM SET JOB_QUEUE_PROCESSES=0; 

System altered. 

SQL> ALTER SYSTEM SET AQ_TM_PROCESSES=0; 

System altered. 

SQL> alter database open; 

Database altered. 

SQL> ALTER DATABASE CHARACTER SET ZHS16GBK; 

ALTER DATABASE CHARACTER SET ZHS16GBK 

* 

ERROR at line 1: 

ORA-12712: new character set must be a superset of old character set 


提示我们的字符集：新字符集必须为旧字符集的超集，这时我们可以跳过超集的检查做更改： 

SQL> ALTER DATABASE character set INTERNAL_USE ZHS16GBK; 

Database altered. 

SQL> select * from v$nls_parameters; 

略 

19 rows selected. 

重启检查是否更改完成： 

SQL> shutdown immediate; 

Database closed. 

Database dismounted. 

ORACLE instance shut down. 

SQL> startup 

ORACLE instance started. 

Total System Global Area  236000356 bytes 

Fixed Size                   451684 bytes 

Variable Size             201326592 bytes 

Database Buffers           33554432 bytes 

Redo Buffers                 667648 bytes 

Database mounted. 

Database opened. 

SQL> select * from v$nls_parameters; 

略 

19 rows selected. 

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 


D、client端字符集修改 


在 /home/oracle与 /root用户目录下的.bash_profile中 


添加或修改 export NLS_LANG="AMERICAN_AMERICA.UTF8" 语句 


关闭当前ssh窗口。 
