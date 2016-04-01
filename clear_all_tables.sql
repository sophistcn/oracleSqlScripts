/**
GTSA
GTSE
GTSB
*/
select * from user_constraints c where c.TABLE_NAME like '%GTSE%';
select * from user_tables t where t.TABLE_NAME like '%GTSE%';

BEGIN
  for c in (select 'ALTER TABLE ' || TABLE_NAME || ' DISABLE CONSTRAINT ' ||
                   constraint_name || ' ' as v_sql
              from user_constraints
             where CONSTRAINT_TYPE = 'R' and TABLE_NAME like '%GTSE%') loop
  
    EXECUTE IMMEDIATE c.v_sql;
  
  end loop;
end;

begin
  for ec in (select table_name from user_tables where TABLE_NAME like '%GTSE%') loop
    execute immediate 'delete ' || ec.table_name;
  end loop;
end;

BEGIN
  for c in (select 'ALTER TABLE ' || TABLE_NAME || ' ENABLE CONSTRAINT ' ||
                   constraint_name || ' ' as v_sql
              from user_constraints
            where CONSTRAINT_TYPE = 'R' and TABLE_NAME like '%GTSE%') loop
  
    EXECUTE IMMEDIATE c.v_sql;
  
  end loop;
end;

/** 删除外键的脚本
select 'alter table ' || table_name || ' drop constraint ' ||
       constraint_name || ';'
  from user_constraints
 where constraint_type = 'R'

  select 'alter table ' || table_name || ' disable constraint ' ||
         constraint_name || ';'
          from user_constraints
         where constraint_type = 'R'
*/
/**
下面是GTSE 通道的清库脚本
**/


BEGIN
  for c in (select 'ALTER TABLE ' || TABLE_NAME || ' DISABLE CONSTRAINT ' ||
                   constraint_name || ' ' as v_sql
              from user_constraints
             where CONSTRAINT_TYPE = 'R' and TABLE_NAME like '%GTSE%') loop
  
    EXECUTE IMMEDIATE c.v_sql;
  
  end loop;
  
  for ec in (select table_name from user_tables where TABLE_NAME like '%GTSE%') loop
    execute immediate 'delete ' || ec.table_name;
  end loop;
   
   for c2 in (select 'ALTER TABLE ' || TABLE_NAME || ' ENABLE CONSTRAINT ' ||
                   constraint_name || ' ' as v_sql
              from user_constraints
            where CONSTRAINT_TYPE = 'R' and TABLE_NAME like '%GTSE%') loop
  
    EXECUTE IMMEDIATE c2.v_sql;
  
  end loop;
  
end;

select * from gtse_tx;
