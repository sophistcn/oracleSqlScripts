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
			where bk.bank_name = '�׶ؽ�������' or bk.bank_swift_no = 'ZXCVBNML' ;
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
    
