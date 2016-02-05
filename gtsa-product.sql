select * from vw_gtsa_account_balance;

select * from vw_gtsk_bank_account;

select ACCOUNT_APPLY_ID,
       ACCOUNT_ID,
       BANK_ID,
       ACCOUNT_TYPE_ID,
       BIZ_TYPE_ID,
       ACCOUNT_AREA,
       CUR_CODE,
       ACCOUNT_NO,
       ACCOUNT_NAME,
       CUST_NO,
       CLT_ADDRESS,
       INNER_ACCOUNT_NO,
       LARGE_ALERT_AMOUNT,
       EXP_ABNORMAL_RATIO,
       ACCOUNT_STATE,
       RATIFIER,
       RATIFY_DATE,
       OPERATE_TYPE,
       INPUTOR,
       INPUT_DATE,
       APPLY_STATE,
       CREATE_DATE,
       LAST_MODIFY_DATE,
       account_location,
       flow_state,
       REMARKS,
       account_source_from,
       connect_way
  from GTSA_ACCOUNT_APPLY
 where ACCOUNT_APPLY_ID = 2301;
----------------------------------------------------------------------------------------------------------------------------------


select t1.*,
       nvl(t2.median_price, 0) * t1."accountBalance" * 0.01 as "balanceRMB"
  from (select *
          from ((select b.account_id           as "accountId",
                        ns.cltname             as "custNoName",
                        stb.bank_name          as "bankNoName",
                        cn.opbankname          as "openBankName",
                        acc.account_no         as "accountNumber",
                        acct.account_type_name as "accountTypeName",
                        b.balance              as "accountBalance",
                        b.book_date            as "bookDate",
                        umc.name               as "country",
                        umcur.codename         as "curCodeName",
                        acc.account_location   as "accountLocation",
                        acc.account_area       as "accountArea",
                        acc.cur_code           as "curCode",
                        b.savedate             as "saveDate"
                   from gtsa_account_balanace b,
                        nsclient              ns,
                        gtsa_account          acc,
                        gtsa_bank_info        bk,
                        cnaps                 cn,
                        admp_standard_bank    stb,
                        gtsa_acc_biz_type     bz,
                        gtsa_account_type     acct,
                        um_country            umc,
                        um_currency           umcur
                  where b.account_id = acc.account_id
                    and umc.code = bk.country
                    and umcur.codeno = acc.cur_code
                    and ns.cltno = acc.cust_no
                    and acc.bank_id = bk.bank_id
                    and bk.bank_no = stb.bank_code
                    and cn.cnapsno = bk.bank_name
                    and acc.biz_type_id = bz.biz_type_id
                    and acct.account_type_id = acc.account_type_id
                    and bk.is_domestic = 1) union all
                (select b.account_id           as "accountId",
                        ns.cltname             as "custNoName",
                        stb.bank_name          as "bankNoName",
                        bk.bank_name           as "openBankName",
                        acc.account_no         as "accountNumber",
                        acct.account_type_name as "accountTypeName",
                        b.balance              as "accountBalance",
                        b.book_date            as "bookDate",
                        umc.name               as "country",
                        umcur.codename         as "curCodeName",
                        acc.account_location   as "accountLocation",
                        acc.account_area       as "accountArea",
                        acc.cur_code           as "curCode",
                        b.savedate             as "saveDate"
                   from gtsa_account_balanace b,
                        nsclient              ns,
                        gtsa_account          acc,
                        gtsa_bank_info        bk,
                        admp_standard_bank    stb,
                        gtsa_acc_biz_type     bz,
                        gtsa_account_type     acct,
                        um_country            umc,
                        um_currency           umcur
                  where b.account_id = acc.account_id
                    and umc.code = bk.country
                    and umcur.codeno = acc.cur_code
                    and ns.cltno = acc.cust_no
                    and acc.bank_id = bk.bank_id
                    and bk.bank_no = stb.bank_code
                    and acc.biz_type_id = bz.biz_type_id
                    and acct.account_type_id = acc.account_type_id
                    and bk.is_domestic = 2)) b
         order by b."bankNoName") t1
  left join VM_RMS_EXC_RATE t2
    on t1."curCodeName" = t2.name ;
    
    
    
    ---------------------------------------------------------------------------
    
    
select t1.*, nvl(t2.rate, 0) * t1."accountBalance" * 0.01 as "balanceRMB"
  from (select *
          from ((select b.account_id           as "accountId",
                        ns.cltname             as "custNoName",
                        stb.bank_name          as "bankNoName",
                        cn.opbankname          as "openBankName",
                        acc.account_no         as "accountNumber",
                        acct.account_type_name as "accountTypeName",
                        b.balance              as "accountBalance",
                        b.book_date            as "bookDate",
                        umc.name               as "country",
                        umcur.codename         as "curCodeName",
                        acc.account_location   as "accountLocation",
                        acc.account_area       as "accountArea",
                        acc.cur_code           as "curCode",
                        b.savedate             as "saveDate"
                   from gtsa_account_balanace b,
                        nsclient              ns,
                        gtsa_account          acc,
                        gtsa_bank_info        bk,
                        cnaps                 cn,
                        admp_standard_bank    stb,
                        gtsa_acc_biz_type     bz,
                        gtsa_account_type     acct,
                        um_country            umc,
                        um_currency           umcur
                  where b.account_id = acc.account_id
                    and umc.code = bk.country
                    and umcur.codeno = acc.cur_code
                    and ns.cltno = acc.cust_no
                    and acc.bank_id = bk.bank_id
                    and bk.bank_no = stb.bank_code
                    and cn.cnapsno = bk.bank_name
                    and acc.biz_type_id = bz.biz_type_id
                    and acct.account_type_id = acc.account_type_id
                    and bk.is_domestic = 1) union all
                (select b.account_id           as "accountId",
                        ns.cltname             as "custNoName",
                        stb.bank_name          as "bankNoName",
                        bk.bank_name           as "openBankName",
                        acc.account_no         as "accountNumber",
                        acct.account_type_name as "accountTypeName",
                        b.balance              as "accountBalance",
                        b.book_date            as "bookDate",
                        umc.name               as "country",
                        umcur.codename         as "curCodeName",
                        acc.account_location   as "accountLocation",
                        acc.account_area       as "accountArea",
                        acc.cur_code           as "curCode",
                        b.savedate             as "saveDate"
                   from gtsa_account_balanace b,
                        nsclient              ns,
                        gtsa_account          acc,
                        gtsa_bank_info        bk,
                        admp_standard_bank    stb,
                        gtsa_acc_biz_type     bz,
                        gtsa_account_type     acct,
                        um_country            umc,
                        um_currency           umcur
                  where b.account_id = acc.account_id
                    and umc.code = bk.country
                    and umcur.codeno = acc.cur_code
                    and ns.cltno = acc.cust_no
                    and acc.bank_id = bk.bank_id
                    and bk.bank_no = stb.bank_code
                    and acc.biz_type_id = bz.biz_type_id
                    and acct.account_type_id = acc.account_type_id
                    and bk.is_domestic = 2)) b
         order by b."bankNoName") t1
  left join (select *
               from g_exchange_rate t4
              where t4.actdate =
                    (select max(actdate)
                       from g_exchange_rate t5
                      where t4.standardno = t5.standardno)) t2
    on t2.standardno = t1."curCode"
------------------------------------------

select * from gtsa_account t;
select * from gtsa_bank_info t;
alter table gtsa_bank_info drop column open_bank_no;

/*把开户行编号写入新的字段*/
update gtsa_bank_info bk
   set bk.open_bank_no = bk.bank_name
 where bk.bank_name in
       (select cn1.cnapsno from cnaps cn1 where cn1.cnapsno = bk.bank_name);
/*更新原来的开户行名称*/
update gtsa_bank_info bk
   set bk.bank_name =
       (select cn.opbankname from cnaps cn where cn.cnapsno = bk.bank_name)
 where bk.bank_name in
       (select cn1.cnapsno from cnaps cn1 where cn1.cnapsno = bk.bank_name);
       

select decode(cn.opbankname, null, 'bk.bank_name', cn.opbankname)
  from cnaps cn
 where cn.cnapsno = 'asdsadsa of bank1';
 
------------------------------------------------------------------------------------------------------------------

declare
  cnt integer;
begin
  select count(0)
    into cnt
    from user_tab_columns a
   where a.Table_name = upper('GTSA_BANK_INFO')
     and a.COLUMN_NAME = upper('OPEN_BANK_NO');
  if cnt = 0 then
    execute immediate 'ALTER TABLE GTSA_BANK_INFO ADD OPEN_BANK_NO VARCHAR2(128)';
    /*把开户行编号写入新的字段*/
    execute immediate 'update gtsa_bank_info bk
     set bk.open_bank_no = bk.bank_name
   where bk.bank_name in
         (select cn1.cnapsno from cnaps cn1 where cn1.cnapsno = bk.bank_name)';
  
    /*更新原来的开户行名称*/
    execute immediate 'update gtsa_bank_info bk
     set bk.bank_name =
         (select cn.opbankname from cnaps cn where cn.cnapsno = bk.bank_name)
   where bk.bank_name in
         (select cn1.cnapsno from cnaps cn1 where cn1.cnapsno = bk.bank_name)';
  end if;
end;
--------------------------------------------------------------------------------------------------------------
select * from gtsa_bank_info_vw;

select * from gtsa_bank_info t ;



select c.*
  from (SELECT T.*, rownum r
          FROM GTSA_BANK_INFO T
         where 1 = 1
         ORDER BY BANK_ID) c
 where c.r <= 20
   and c.r > 0;
   
   select g.bank_id as "bankId", g.bank_name as "bankName"
     from gtsa_bank_info g
    where 1 = 1
    
    and g.bank_name like ;
    
    
    
    
    
    select b.*
      from (select d.*, rownum r
              from (select c.opbankname as opBankName,
                           c.opbankaddr as opBankAddr,
                           c.cnapsno    as cnapsNo,
                           c.bankno     as bankNo
                      from cnaps c
                     where 1 = 1) d) b
     where r <= 20
       and r > 0
;
--------------------------------------------------------------------------


select bk.country       as "country",
       bk.is_domestic   as "isDomestic",
       t.cur_code       as "curCode",
       bk.bank_region   as "bankRegion",
       bk.bank_swift_no as "bankSwiftNo",
       bk.bank_address  as "bankAddress",
       t.account_area   as "accountLocation"
  from gtsa_account_apply t
 inner join gtsa_bank_info bk
    on t.bank_id = bk.bank_id
   and apy.account_apply_id = #AccountApplyId#;
--------------------------------------------------------------------------------------------------
select * from gtsa_account_apply apy where apy.account_apply_id = 4535

select bk.*
  from gtsa_account_apply apy
 inner join gtsa_bank_info bk
    on apy.bank_id = bk.bank_id
 where apy.account_apply_id = 2301;

------------------------------------------------------------------------------------

select decode(apy.account_type_id, acc.account_type_id, apy.account_type_id),
       apy.account_type_id,
       acc.account_type_id
  from gtsa_account_apply apy
  left join gtsa_account acc
    on apy.account_id = acc.account_id
 where apy.account_apply_id = 2301;

select * from gtsa_acc_tx_map g where  account_id  = 34 order by tx_code
---------------------------------------------------------------------------------------
select cltno as "value", ns.address as "name" from ;
select * from gtsa_account where ACCOUNT_ID = 484 for update;
---------------------------------------------------------------
select * from gtsa_account_apply t order by t.account_apply_id desc;

select t.account_apply_id    as "accountApplyId",
       ns.cltname            as "custNo",
       t.connect_way         as "connectWay",
       t.inner_account_no    as "innerAccountNo",
       um.codename           as "curCode",
       t.account_no          as "accountNo",
       t.exp_abnormal_ratio  as "expAbnormalRatio",
       bk.bank_name          as "bankName",
       ar.area_name          as "accountLocation",
       t.account_state       as "accountState",
       t.account_name        as "accountName",
       t.clt_address         as "cltAddress",
       t.account_source_from as "accountSourceFrom",
       t.account_type_id     as "accountTypeId",
       t.large_alert_amount  as "largeAlertAmount"
  from gtsa_account_apply t
  left join nsclient ns
    on t.cust_no = ns.cltno
  left join um_currency um
    on t.cur_code = um.codeno
  left join gtsa_bank_info bk
    on t.bank_id = bk.bank_id
  left join gtsa_area ar
    on t.account_location = ar.area_code
 where t.account_apply_id = 4515;
 
 
 
 select t.account_id          as "accountid",
        ns.cltname            as "custNo",
        t.connect_way         as "connectWay",
        t.inner_account_no    as "innerAccountNo",
        um.codename           as "curCode",
        t.account_no          as "accountNo",
        t.exp_abnormal_ratio  as "expAbnormalRatio",
        bk.bank_name          as "bankName",
        ar.area_name          as "accountLocation",
        t.account_state       as "accountState",
        t.account_name        as "accountName",
        t.clt_address         as "cltAddress",
        t.account_source_from as "accountSourceFrom",
        t.account_type_id     as "accountTypeId",
        t.large_alert_amount  as "largeAlertAmount"
   from gtsa_account t
   left join nsclient ns
     on t.cust_no = ns.cltno
   left join um_currency um
     on t.cur_code = um.codeno
   left join gtsa_bank_info bk
     on t.bank_id = bk.bank_id
   left join gtsa_area ar
     on t.account_location = ar.area_code
  where t.account_id = #accountId#

select * from gtsa_account_type ;
select * from gtsa_acc_biz_type;

 
 select tx.tx_code            as txCode,
        tx.tx_name            as txName,
        g.bank_interface_type as bankInterfaceType
   from gtsa_tx_type tx
   left join gtsa_acc_tx_map_apply g
     on g.tx_code = tx.tx_code
    and g.account_apply_id = 4515;
    
    select * from gtsa_bank_info;
----------------------------------------------------------------------------------


 
    select *
      from (select bk.country as "country",
                   acc.account_area as "accountArea",
                   acc.cust_no as "custNo",
                   acc.account_no as "accountNo",
                   acc.account_type_id as "accountTypeId",
                   acc.biz_type_id as "bizTypeId",
                   bk.bank_name as "bankName",
                   bk.bank_address as "bankAddress",
                   acc.account_state as "accountState",
                   acc.account_id as "accountId",
			                acc.account_name    as "accountName",
                   acc.cur_code as "curCode",
                   (select max(apy.account_apply_id)
                      from gtsa_account_apply apy
                     where apy.account_id = acc.account_id) as "accountApplyId",
                   rownum r
              from gtsa_account acc
              left join gtsa_bank_info bk
                on acc.bank_id = bk.bank_id
             where 1 = 1
             order by acc.cur_code) c
     where c.r <= 20
       and c.r > 0 ;
       
       
       
    
    select *
      from (select bk.country as "country",
                   acc.account_area as "accountArea",
                   acc.cust_no as "custNo",
                   bk.bank_no as "bankNo",
                   acc.inner_account_no as "innerAccountNo",
                   acc.account_no as "accountNo",
                   acc.account_type_id as "accountTypeId",
                   acc.biz_type_id as "bizTypeId",
                   bk.bank_name as "bankName",
                   bk.bank_address as "bankAddress",
                   acc.account_state as "accountState",
                   acc.account_id as "accountId",
                   acc.account_name as "accountName",
                   acc.cur_code as "curCode",
                   (select max(apy.account_apply_id)
                      from gtsa_account_apply apy
                     where apy.account_id = acc.account_id) as "accountApplyId",
                   rownum r
              from gtsa_account acc
              left join gtsa_bank_info bk
                on acc.bank_id = bk.bank_id
             where 1 = 1
             order by acc.cur_code) c
     where c.r <= 20
       and c.r > 0
----------------------------

select * from gtsa_bank_info bk order by bk.bank_id desc ; 
