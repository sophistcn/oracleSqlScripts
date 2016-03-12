select * from vw_fer_query_tx;

update wf_master_user set PWDBS='103C7070C42E77AD1BDD4AC16297A2276AA4A104', PWDCS='dHVyZ3JrMXJwdDA9' where uno='01_1';

update wf_master_user set PWDBS='103C7070C42E77AD1BDD4AC16297A2276AA4A104', PWDCS='dHVyZ3JrMXJwdDA9' where uno='01_1';

select * from wf_master_user;

update wf_master_user set PWDBS='D98E7399BC99DB1C6434FA57D3B440AFC160C1BA', PWDCS='dHVyYndmaGFydDA9' where uno='001_1';

-------------------------------------------------------------------------------------------------------------------------------

select f.id tradeId,
       f.rec_date actDate,
       f.amount aMount,
       f.rec_bank bankNo,
       b.bank_name bankName,
       f.currency_No currencyNo,
       f.corp_no cltno,
       f.rec_account acntNo,
       f.rec_name acntName,
       f.con_account fcNo,
       f.pay_account opAcntNo,
       f.pay_name opAcntName,
       f.pay_bank opbankname,
       f.memberno memberNo,
       n.cltname as memberName,
       f.remark explain,
       f.status receiptState,
       f.bank_rec_id rId,
       f.buss_no bussNo,
       '' memAcntno,
       '' memInnerAcntno,
       '' memInnerkmh,
       t.tname,
       f.pay_bank
  from fer_receipt f
  JOIN admp_standard_bank b
    ON f.rec_bank = b.bank_code
  left join NSCLIENT N
    on N.cltno = f.memberNo
  left join fer_trademode t
    on f.trademodeid = t.trademodeid
 where 1 = 1
   and f.rec_date >= '2016-02-22 00:00:00.0'
   and f.rec_date <= '2016-02-22 00:00:00.0'
;
-------------------------------------------------------------------
select * from fer_receipt;


select * from amny;

-------------------------------------------------------------------------------------------


vw_gtsc_bank_account  

select * from gtsa_bank_info;


select count(0)
			  from gtsa_bank_info bk
			where bk.bank_name = '伦敦建设银行' or bk.bank_swift_no = 'ZXCVBNML' ;
---------------------------------------
select * from fer_tx;

select * from  FER_NET_SETTLEMENT_RESULT;
---------------------
select * from FER_PAYEE;

----------------
select * from fcm_spot_txsheet ;
select * from FCM_Spot_TXApply;

-----------------------



    select
        caid          as "caId",
        rmbAcntNo              as  rmbAcntNo,
        feAcntNo              as  feAcntNo,
        feMoney               as feMoney,
        feBz                 as feBz,
        applyDate            as applyDate,
        endDate              as endDate,
        state                as state   
    from
        FCM_Spot_TXApply    
    where
        1=1 
        and state!=99        
        and     TxDir = '0'             
        and     cltNo = '0010103'     
-------------------------------------------------------------
 
select * from vw_fer_account_balance;
select * from vw_fer_account;


select * from fcm_currency_convert_info ;

select * from biz_flow b where b.
-------------------------------------------------

    
    select f.id tradeId,
           f.trade_source,
           f.sheet_account,
           f.rec_date actDate,
           f.amount aMount,
           f.rec_bank bankNo,
           b.bank_name bankName,
           f.currency_No currencyNo,
           f.corp_no cltno,
           f.rec_account acntNo,
           f.rec_name acntName,
           f.con_account fcNo,
           f.pay_account opAcntNo,
           f.pay_name opAcntName,
           f.pay_bank opbankname,
           f.memberno memberNo,
           n.cltname as memberName,
           f.remark explain,
           f.status receiptState,
           f.bank_rec_id rId,
           f.buss_no bussNo,
           '' memAcntno,
           '' memInnerAcntno,
           '' memInnerkmh,
           t.tname,
           f.pay_bank
      from fer_receipt f
      JOIN admp_standard_bank b
        ON f.rec_bank = b.bank_code
      left join NSCLIENT N
        on N.cltno = f.memberNo
      left join fer_trademode t
        on f.trademodeid = t.trademodeid
     where 1 = 1
----------------------------------------------------------

select * from fer_tx t ;

select * from gtsa_account t where t.account_no = '15822690644';

------------

 
 select t.*
   from vw_fer_query_tx t
  where 1 = 1
    and state <> -6
    and t.cltNo = '001'
    and t.state in (0, -2, -4, -5, -3)
    and t.state <> -9
    and t.bussType like '%financeSelf'
    and t.swiftFlag = '0'
  order by t.CREATETIME DESC ;
  
----------------------

select * from vw_fer_query_tx;

select * from fer_tx_log t where t.logid =  666; 

------------------
    
    select t.codename as joinCurrencyName, t.*
      from vw_fer_account t
     where 1 = 1
       and t.cur_code = 'EUR'
       and t.account_type_id = '5'
       and t.CUST_NO = '001'
       and t.bank_no = '04'

--------------
 
 select t.codename as joinCurrencyName, t.*
   from vw_fer_account t
  where 1 = 1
    and t.cur_code = 'CNY'
    and t.account_type_id = '2'
    and t.CUST_NO = '0010101'
    and t.bank_no = '04'
-----------------

select * from vw_fer_query_tx where txid = 285;
---
  select
        t.codename as joinCurrencyName,
        t.* 
    from
        vw_fer_account t 
    where
        1=1         
        and             t.cur_code = 'EUR'                  
        and             t.account_type_id = '5'                           
        and             t.CUST_NO = '001'                  
        and             t.bank_no = '01'   
----


select * from vw_fer_query_tx;
select * from vw_fer_account;

------------------------------------------
 
 select t.*
   from vw_fer_query_tx t
  where 1 = 1
    and state <> -6
    and t.cltNo = '001'
    and t.state in (0, -2, -4, -5, -3,21)
    and t.state <> -9
    and t.bussType like '%financeSelf'
    and t.swiftFlag = '0'
  order by t.CREATETIME DESC ;
  
---
  select * from fer_tx --_log ;
  select * from ns_gs_settings for update;
  update ns_gs_settings g set ;
  
  select * from fer_tx_log where 1=1  and  	txId = 208      order by createTime;
  
  select * from fer_tx_log where 1=1  and  	txId = 208      order by createTime;
  
    select t.cashamount, t.amount,t.busstype from fer_tx t;
--------------------------


select * from  vw_fer_account;

select t1.account_id,
       t1.bank_id,
       t1.account_type_id,
       t1.account_no,
       t1.cust_no,
       t1.cur_code,
       t1.account_name,
       t1.inner_account_no,
       t1.account_state,
       t1.quota,
       t2.is_domestic,
       t2.bank_no,
       t2.bank_swift_no,
       t2.bank_region,
       t2.bank_address,
       s.bank_name,
       case when t2.is_domestic = 1 then (select t3.opbankname from cnaps t3 where t3.cnapsno = t2.bank_name)
            when t2.is_domestic = 2 then t2.bank_name
        end as openBankName,
       t2.remarks
  from (select a.*,b.balance,b.available_balance quota from gtsa_account a left join (SELECT * from gtsa_account_balanace where savedate in (select MAX(savedate) id from gtsa_account_balanace b1 GROUP BY B1.ACCOUNT_ID)) b on a.account_id = b.account_id) t1
  join gtsa_bank_info t2 on t1.bank_id = t2.bank_id
  join admp_standard_bank s on t2.bank_no = s.bank_code
  where t1.account_state = 1
  ;
  
  
--------------------------

select * from fcm_synthetical_cashset_log t where trunc(t.create_date ,'dd') = trunc(sysdate -1 , 'dd') 

