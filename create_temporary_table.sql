--���񼶱�
create global temporary table tmp_table_on_commit_delete 
( id integer,
 name varchar2(50)) on commit delete rows;
 
 --�Ự����
 create global temporary table tmp_table_on_commit_preserve
( id integer,
 name varchar2(50))  On Commit Preserve Rows;
 
 --Ĭ��Ϊ���񼶱�
  create global temporary table tmp_table_on_commit_default
( id integer,
 name varchar2(50)) ;
