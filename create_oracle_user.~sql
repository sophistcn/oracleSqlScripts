
create user wzp identified by wzp;
grant dba to wzp;
grant connect, resource to wzp;



create user wzp1 identified by wzp1;
grant dba to wzp1;
grant connect, resource to wzp1;

select tablespace_name, table_name from user_tables;
alter tablespace SYSTEM
    add datafile 'D:\oraclexe\app\oracle\oradata\XE\SYSTEM_EXT.DBF'
    size 1024M autoextend on next 50M maxsize unlimited;
