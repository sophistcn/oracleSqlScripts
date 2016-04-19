select * from admp_standard_bank ;
select * from gtsa_bank_info;
select trunc(dbms_random.value(1,3)) from dual;
select *,um.code from um_country um;
select * from cnaps;
select dbms_random.string('U',8) from dual;
begin
  for v_stb in (select * from admp_standard_bank sbk) loop
    for v_cnp in (select *
                    from (select * from cnaps cn order by dbms_random.random)
                   where rownum < 100) loop
    
      insert into gtsa_bank_info gbk
      values
        (gtsa_bank_id_seq.nextval,
         trunc(dbms_random.value(1, 3)),
         'USA',
         v_stb.bank_code,
         dbms_random.string('U', 8),
         '01',
         '01',
         'english01',
         v_cnp.cnapsno,
         v_cnp.opbankname,
         '备注' || trunc(dbms_random.value(1, 30000)));
         commit;
    end loop;
    end loop;
  end;
  
select * from gtsa_account_type;

 insert into gtsa_bank_info values (gtsa_bank_id_seq.nextval, trunc(dbms_random.value(1,3)), 'USA','01','DDFFGGDD','01','01','english01', '001806461002','中国人民银行清涧县支行','remarks');

insert into gtsa_account
  (ACCOUNT_ID,
   BANK_ID,
   ACCOUNT_TYPE_ID,
   BIZ_TYPE_ID,
   ACCOUNT_AREA,
   CUR_CODE,
   ACCOUNT_NO,
   ACCOUNT_NAME,
   CUST_NO,
   INNER_ACCOUNT_NO,
   LARGE_ALERT_AMOUNT,
   EXP_ABNORMAL_RATIO,
   ACCOUNT_STATE,
   ACCOUNT_LOCATION,
   CLT_ADDRESS,
   ACCOUNT_SOURCE_FROM,
   CONNECT_WAY,
   ACCOUNT_CODE)
values
  (gtsa_account_id_seq.nextval,
   1,
   2,
   1,
   null,
   'GBP',
   'wzp' ||   trunc(dbms_random.value(0,100000)),
   '23423',
   '002001',
   null,
   0.00,
   0.00,
   1,
   '1',
   '3',
   1,
   1,
   null);
   
   -------------------------------------
   
   insert into gtsa_account
  (ACCOUNT_ID,
   BANK_ID,
   ACCOUNT_TYPE_ID,
   BIZ_TYPE_ID,
   ACCOUNT_AREA,
   CUR_CODE,
   ACCOUNT_NO,
   ACCOUNT_NAME,
   CUST_NO,
   INNER_ACCOUNT_NO,
   LARGE_ALERT_AMOUNT,
   EXP_ABNORMAL_RATIO,
   ACCOUNT_STATE,
   ACCOUNT_LOCATION,
   CLT_ADDRESS,
   ACCOUNT_SOURCE_FROM,
   CONNECT_WAY,
   ACCOUNT_CODE)
values
  (gtsa_account_id_seq.nextval,
   1,
   trunc(dbms_random.value(1,6)),
   1,
   null,
   'USD',
   'wzp_usd' ||   trunc(dbms_random.value(0,100000)),
   'wzp_美元' ||   trunc(dbms_random.value(0,100000)),
   '001',
   null,
   0.00,
   0.00,
   1,
   '1',
   '3',
   1,
   1,
   null);

insert into gtsa_account_balanace
  (ID,
   ACCOUNT_ID,
   BOOK_DATE,
   BANK_NO,
   ACCOUNT_NUMBER,
   CURRENCY_CODE,
   BALANCE,
   LAST_NIGHT_BALANCE,
   AVAILABLE_BALANCE,
   SAVEDATE)
values
  (seq_gtsa_account_balance.nextval,
   (select t.account_id from gtsa_account t where t.account_no = 'wzp8958' ),
   to_date('15-12-2015', 'dd-mm-yyyy'),
   '01',
   'wzp8958',
   'EUR',
   999999.0000,
   null,
   999999.0000,
   '15-12月-15 03.53.58.000000 下午');
---------------------------------
/*为所有账户创建余额*/
   begin 
     for acc in (select t1.account_no from gtsa_account t1 ) loop
       dbms_output.put_line(acc.account_no);
        
        insert into gtsa_account_balanace
          (ID,
           ACCOUNT_ID,
           BOOK_DATE,
           BANK_NO,
           ACCOUNT_NUMBER,
           CURRENCY_CODE,
           BALANCE,
           LAST_NIGHT_BALANCE,
           AVAILABLE_BALANCE,
           SAVEDATE)
        values
          (seq_gtsa_account_balance.nextval,
           (select t.account_id from gtsa_account t where t.account_no = acc.account_no),
           to_date('15-12-2015', 'dd-mm-yyyy'),
           '01',
           acc.account_no,
           'EUR',
           trunc(dbms_random.value(0,100000)),
           null,
           trunc(dbms_random.value(0,100000)),
           sysdate);
           commit;
      end loop;
      
    end;

----------------------------------
/*不同币种，单位，银行的账户创建*/
select * from gtsa_bank_info ;
select * from gtsa_account;
select * from gtsa_account_type;
select gtsa_account_id_seq.nextval from dual;

select * from user_constraints u where u.CONSTRAINT_NAME like '%GTSA%';

begin
  --  for bk in (select * from admp_standard_bank bk ) loop
  for bk in (select * from gtsa_bank_info) loop
    for curCode in (select * from um_currency umc where umc.isenable = 1) loop
    
      insert into gtsa_account
        (ACCOUNT_ID,
         BANK_ID,
         ACCOUNT_TYPE_ID,
         BIZ_TYPE_ID,
         ACCOUNT_AREA,
         CUR_CODE,
         ACCOUNT_NO,
         ACCOUNT_NAME,
         CUST_NO,
         INNER_ACCOUNT_NO,
         LARGE_ALERT_AMOUNT,
         EXP_ABNORMAL_RATIO,
         ACCOUNT_STATE,
         ACCOUNT_LOCATION,
         CLT_ADDRESS,
         ACCOUNT_SOURCE_FROM,
         CONNECT_WAY)
      values
        (gtsa_account_id_seq.nextval,
         bk.bank_id,
         trunc(dbms_random.value(1,6)),
         1,
         null,
         curCode.Codeno,
         'wzp' || trunc(dbms_random.value(0, 100000)),
         'wzp' || trunc(dbms_random.value(0, 100000)),
         '01',
         null,
         0.00,
         0.00,
         1,
         '1',
         '地址' || trunc(dbms_random.value(0, 100000)),
         1,
         1);
    commit;
    end loop;
  end loop;
end;

-------------------------------------


 
      insert into gtsa_account
        (ACCOUNT_ID,
         BANK_ID,
         ACCOUNT_TYPE_ID,
         BIZ_TYPE_ID,
         ACCOUNT_AREA,
         CUR_CODE,
         ACCOUNT_NO,
         ACCOUNT_NAME,
         CUST_NO,
         INNER_ACCOUNT_NO,
         LARGE_ALERT_AMOUNT,
         EXP_ABNORMAL_RATIO,
         ACCOUNT_STATE,
         ACCOUNT_LOCATION,
         CLT_ADDRESS,
         ACCOUNT_SOURCE_FROM,
         CONNECT_WAY,
         ACCOUNT_CODE)
      values
        (gtsa_account_id_seq.nextval,
         348,
         3,
         1,
         null,
         'USD',
         'wzp' || trunc(dbms_random.value(0, 100000)),
         'wzp' || trunc(dbms_random.value(0, 100000)),
         '03',
         null,
         0.00,
         0.00,
         1,
         '1',
         '地址' || trunc(dbms_random.value(0, 100000)),
         1,
         1,
 null);
