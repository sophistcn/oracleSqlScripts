
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


create user sms1 identified by sms1;
grant dba to sms1;
grant connect, resource to sms1;

create user fss1 identified by fss1;
grant dba to fss1;
grant connect, resource to fss1;


create user fss2 identified by fss2;
grant dba to fss2;
grant connect, resource to fss2;

drop user sms2 cascade;
create user sms2 identified by sms2;
grant dba to sms2;
grant connect, resource to sms2;



create user bp3 identified by bp3;
grant dba to bp3;
grant connect, resource to bp3;

imp fss2/fss2@xe fromuser="fss" touser="fss2" file="G:\db_backup\n9.fss.base.test.dmp" ignore=y feedback=5000
