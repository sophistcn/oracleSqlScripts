


oracle���ݿ���ַ������� 


A��oracle server �� �ַ�����ѯ 


select userenv('language') from dual 


����NLS_CHARACTERSET Ϊserver���ַ��� 


NLS_LANGUAGE Ϊ server���ַ���ʾ��ʽ 


B����ѯoracle client�˵��ַ��� 


$echo $NLS_LANG 

���������select ���������������룬���client�˵��ַ������ó���linux����ϵͳ��ͬ���ַ�����������������룬���п��������ݿ��е����ݴ������⣬������oracle����˵����ô������⡣ 


C��server���ַ����޸� 


***************************************************************** 


*  �����ַ������跽��(WE8ISO8859P1 --> ZHS16GBK)            * 


***************************************************************** 


SQL> 

�����ݿ�������RESTRICTEDģʽ�����ַ������ģ� 

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


��ʾ���ǵ��ַ��������ַ�������Ϊ���ַ����ĳ�������ʱ���ǿ������������ļ�������ģ� 

SQL> ALTER DATABASE character set INTERNAL_USE ZHS16GBK; 

Database altered. 

SQL> select * from v$nls_parameters; 

�� 

19 rows selected. 

��������Ƿ������ɣ� 

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

�� 

19 rows selected. 

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 


D��client���ַ����޸� 


�� /home/oracle�� /root�û�Ŀ¼�µ�.bash_profile�� 


��ӻ��޸� export NLS_LANG="AMERICAN_AMERICA.UTF8" ��� 


�رյ�ǰssh���ڡ� 
