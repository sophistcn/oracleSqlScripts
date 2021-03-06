select * from gtsa_account o where o.account_id = 4781; 

select acc.account_id as "accountid",
       umcur.codename as "curtypename",
       acc.account_no as "accountno",
       acc.account_name as "accountname",
       case
         when b.is_domestic = 1 then
          (select cn.opbankname from cnaps cn where cn.cnapsno = b.bank_name)
         when b.is_domestic = 2 then
          b.bank_name
       end as "openbankname",
       ns.cltname as "custnoname",
       um_country.name as country,
       b.bank_region,
       b.bank_address,
       sbk.bank_name as root_bank_name,
       typ.account_type_name,
       case
         when acc.account_state = 1 then
          '正常'
         when acc.account_state = 2 then
          '停用'
       end as "accountstatename",
       nvl(e.AVAILABLE_BALANCE, 0) as "availablebalance"
  from gtsa_account acc
 inner join gtsa_bank_info b
    on acc.bank_id = b.bank_id
 inner join um_country
    on um_country.code = b.country
 inner join gtsa_account_type typ
    on typ.account_type_id = acc.account_type_id
 inner join admp_standard_bank sbk
    on sbk.bank_code = b.bank_no
 inner join um_currency umcur
    on umcur.codeno = acc.cur_code
 inner join nsclient ns
    on ns.cltno = acc.cust_no
  left join (select t2.*
               from (select t1.*,
                            ROW_NUMBER() over(partition by t1.account_number order by t1.savedate desc) balance_row_number
                       from gtsa_account_balanace t1) t2
              where t2.balance_row_number = 1) e
    on acc.ACCOUNT_NO = e.account_number 
;



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
  (aims_account_seq.nextval,
   422,
   5,
   2,
   null,
   'GBP',
   'guoneizhu-05',
   '英镑国内主05',
   '01',
   null,
   null,
   null,
   1,
   null,
   '中航广场2',
   null,
   3,
   '030119');
   
   
gtsa_account_balanace 
