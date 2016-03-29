--删除数据库所有的对象
DECLARE
  V_CNT  INTEGER := 0;
  V_LEFT INTEGER := 0;
  V_SQL  VARCHAR2(500);
BEGIN

  LOOP
    SELECT COUNT(*)
      INTO V_LEFT
      FROM USER_OBJECTS T
     WHERE 1 = 1
       and t.object_type != 'LOB';
    V_CNT := V_CNT + 1;
    FOR CUR IN (SELECT *
                  FROM USER_OBJECTS T
                 WHERE 1 = 1
                   and t.object_type != 'LOB'
                 order by t.object_id asc) LOOP
      V_SQL := 'DROP ' || CUR.OBJECT_TYPE || ' ' || CUR.OBJECT_NAME;
      --  DBMS_OUTPUT.put_line(V_SQL);
      BEGIN
        EXECUTE IMMEDIATE V_SQL;
      EXCEPTION
        WHEN OTHERS THEN
          NULL;
      END;
    END LOOP;
  
    EXIT WHEN(V_CNT > 1000 OR V_LEFT = 0);
  END LOOP;

END;
/

--查询数据库是否还有残留对象
select * from user_objects t ;


---清空回收站

PURGE RECYCLEBIN;

