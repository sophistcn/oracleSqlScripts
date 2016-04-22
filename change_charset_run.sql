conn /as sysdba 
shutdown immediate; 
startup mount
ALTER SYSTEM ENABLE RESTRICTED SESSION;
ALTER SYSTEM SET JOB_QUEUE_PROCESSES=0; 
ALTER SYSTEM SET AQ_TM_PROCESSES=0; 
alter database open; 

ALTER DATABASE CHARACTER SET ZHS16GBK; 

ALTER DATABASE character set INTERNAL_USE ZHS16GBK; 

select * from v$nls_parameters; 

shutdown immediate; 
startup 
 
select * from v$nls_parameters; 
 

