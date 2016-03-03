select *
  from (select t.account_name as "accountName",
               case
                 when bk.is_domestic = 1 then
                  (select cn.opbankname
                     from cnaps cn
                    where cn.cnapsno = bk.bank_name)
                 when bk.is_domestic = 2 then
                  bk.bank_name
               end as "openBankName",
               t.cur_code as "curCode",
               bk.bank_no as "bankNo",
               bl.available_balance as "availableBalance",
               rownum r
          from gtsa_account t
          left join gtsa_bank_info bk
            on t.bank_id = bk.bank_id
          left join (select t2.*
                      from (select t1.*,
                                   ROW_NUMBER() over(partition by t1.account_number order by t1.savedate desc) balance_row_number
                              from gtsa_account_balanace t1) t2
                     where t2.balance_row_number = 1) bl
            on t.account_no = bl.account_number
         where t.account_no = '01'
         order by bl.savedate desc) c
 where c.r = 1
---------------------------------------------------------------------------------------------------------------------------------------------


select ns.cltno as "value", ns.address 
select *  from nsclient ns;

select count(0)
  from gtsa_bank_info bk
 where bk.bank_swift_no = ''
   and bk.bank_name = ''

select * from gtsa_bank_info;

 
 INSERT INTO GTSA_BANK_INFO
   (BANK_ID,
    IS_DOMESTIC,
    COUNTRY,
    BANK_NO,
    BANK_SWIFT_NO,
    BANK_REGION,
    BANK_ADDRESS,
    BANK_ENGLISH_ADDRESS,
    OPEN_BANK_NO,
    BANK_NAME,
    REMARKS)
 VALUES
   (GTSA_BANK_ID_SEQ.NEXTVAL,
    1,
    'CHN',
    '03',
    'BANKABCA',
    '12',
    '山西省高平古城路73号',
    '',
    '001168310612',
    '中国人民银行高平市支行',
    '');
    
    
---------------------------------


    
    select *
      from (select t.account_name       as "accountName",
                   bk.bank_name         as "openBankName",
                   t.cur_code           as "curCode",
                   bk.bank_no           as "bankNo",
                   bl.available_balance as "availableBalance",
                   rownum               r
              from gtsa_account t
              left join gtsa_bank_info bk
                on t.bank_id = bk.bank_id
              left join (select t2.*
                          from (select t1.*,
                                       ROW_NUMBER() over(partition by t1.account_number order by t1.savedate desc) balance_row_number
                                  from gtsa_account_balanace t1) t2
                         where t2.balance_row_number = 1) bl
                on t.account_no = bl.account_number
             where t.account_no = 'w103'
             order by bl.savedate desc) c
     where c.r = 1;
-------------
select t.bank_account_no, t.* from gtse_tx t;
select * from gtsa_account t where t.account_no = 'nstc2015070700001';
update gtsa_account t set t.inner_account_no = '00101' where t.account_no = 'nstc2015070700001';
update gtsa_account t set t.inner_account_no = '2011010192700000000' where t.account_no = '1002';

select * from gtsa_account t where t.account_no = '1002';

update gtse_tx t set t.ebd_error_msg = '' where t.tx_id = 642;
--------------------------------------------------------------
select * from gtsa_bank_info ;

select *
  from admp_standard_bank sbk
 order by F_TRANS_PINYIN_CAPITAL_H(sbk.bank_name) asc
select * from admp_standard_bank sbk order by sbk.bank_name asc;
-----------------------------------------------

select SEQ_GTSE_PACKET_ID.nextval from dual;
select SEQ_GTSE_PACKET_ID.nextval from dual;

select  a.bank_code as "value", a.bank_name as "name" from admp_standard_bank a order by F_TRANS_PINYIN_CAPITAL_H(a.bank_name) asc;


select * from fer_tx t where t.txid = 181;


    
    select t.*
      from vw_fer_query_tx t
     where 1 = 1
       and state <> -6
       and t.state = 11
     order by t.CREATETIME DESC;
     
     select * from fer_tx_log l where l.txid = 181;
--------------------
    
    select c.*
      from (select t.bank_account_no, rownum r
              from gtse_tx t, gtse_tx_register r
             where t.tx_id = r.tx_id
               and r.register_state = 1) c
     where c.r > 0
       and c.r <= 10
---------------------------------

