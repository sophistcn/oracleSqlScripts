
create user wzp identified by wzp;
grant dba to wzp;
grant connect, resource to wzp;



create user wzp1 identified by wzp1;
grant dba to wzp1;
grant connect, resource to wzp1;

create user zx identified by zx;
grant dba to zx;
grant connect, resource to zx;

select tablespace_name, table_name from user_tables;
alter tablespace SYSTEM
    add datafile 'D:\oraclexe\app\oracle\oradata\XE\SYSTEM_EXT.DBF'
    size 4024M autoextend on next 50M maxsize unlimited;

alter tablespace SYSTEM
    add datafile 'D:\oraclexe\app\oracle\oradata\XE\SYSTEM_EXT.DBF'
    size 4024M autoextend on next 500M maxsize unlimited;

drop user fss cascade;
create user fss identified by fss;
grant dba to fss;
grant connect, resource to fss;

drop user sms cascade;
create user sms identified by sms;
grant dba to sms;
grant connect, resource to sms;

