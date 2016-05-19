select * from TMP_TABLE_ON_COMMIT_DELETE t;
--事务级别
insert into TMP_TABLE_ON_COMMIT_DELETE  values( 1,'haha');
select * from TMP_TABLE_ON_COMMIT_DELETE t;
commit;
select * from TMP_TABLE_ON_COMMIT_DELETE t;



--会话级别
select * from tmp_table_on_commit_preserve t;
insert into tmp_table_on_commit_preserve  values( 1,'haha');
select * from tmp_table_on_commit_preserve t;
commit;
select * from tmp_table_on_commit_preserve t;


--默认为事务级别
select * from tmp_table_on_commit_default t;
insert into tmp_table_on_commit_default  values( 1,'haha');
select * from tmp_table_on_commit_default t;
commit;
select * from tmp_table_on_commit_default t;


