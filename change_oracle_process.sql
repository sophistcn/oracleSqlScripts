select value from v$parameter where name = 'processes';

select value from v$parameter where name = 'sessions'; 

alter system set processes=600 scope=spfile;

--2. 查看最大连接数： 
select value from V$parameter where name='processes';

--3. 查看当前连接数： 
select count (*) from V$process;
