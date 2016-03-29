    
    select c.bank_account_id as "bankAccountId",
           c.account_no as "accountNo",
           c.account_name as "accountName",
           c.account_short_name as "accountShortName",
           c.bank_code as "bankCode",
           c.CUST_NAME as "custName",
           c.cust_no as "custNo",
           d.bank_name as "bankName",
           c.BANK_BRANCH_NAME as "bankBranchName",
           a.acc_record_id as "accRecordId",
           a.collect_flag as "collectFlag",
           a.allocate_flag as "allocateFlag",
           a.max_leave as "maxLeave",
           a.min_leave as "minLeave",
           a.collect_mthd as "collectMthd",
           a.collect_rate as "collectRate",
           a.closeto_amount as "closetoAmount",
           b.account_group_name as "accountGroupName",
           b.main_account_id as "mainAccountId",
           b.deserve_quata as "deserveQuata",
           b.bcm_bank_code as "bcmBankCode",
           nvl(e.BALANCE, 0) as "accountBalance",
           nvl(e.AVAILABLE_BALANCE, 0) as "canuseBalance",
           a.launch_mthd as "launchMthd",
           a.launch_time as "launchTime",
           a.virtual_acc_no as "virtualAccNo",
           a.virtual_bank_acc_no as "virtualBankAccNo",
           a.virtual_check_acc_no as "virtualCheckAccNo",
           c.bank_inteface_type as "bankIntefaceType"
      from GTSB_ACCOUNT         a,
           GTSB_account_group   b,
           VW_GTSB_BANK_ACCOUNT mainc,
           VW_GTSB_BANK_ACCOUNT c
      left join VW_GTSB_BANK d
        on d.bank_code = c.bank_code
      left join (select t2.*
                   from (select t1.*,
                                ROW_NUMBER() over(partition by t1.account_number order by t1.savedate desc) balance_row_number
                           from gtsa_account_balanace t1) t2
                  where t2.balance_row_number = 1) e
        on c.ACCOUNT_NO = e.account_number
     where a.bcm_account_id = c.bank_account_id
       and a.account_group_id = b.account_group_id
       and b.main_account_id = mainc.bank_account_id
       and b.account_group_level is not null
       and c.domestic = 1
       and mainc.ACCOUNT_TYPE = 5
       and c.cust_no = '001'
       and a.collect_flag in (1)
----------------------------


select c.bank_account_id as "bankAccountId",
       c.account_no as "accountNo",
       c.account_name as "accountName",
       c.account_short_name as "accountShortName",
       c.bank_code as "bankCode",
       c.CUST_NAME as "custName",
       c.cust_no as "custNo",
       d.bank_name as "bankName",
       c.BANK_BRANCH_NAME as "bankBranchName",
       a.acc_record_id as "accRecordId",
       a.collect_flag as "collectFlag",
       a.allocate_flag as "allocateFlag",
       a.max_leave as "maxLeave",
       a.min_leave as "minLeave",
       a.collect_mthd as "collectMthd",
       a.collect_rate as "collectRate",
       a.closeto_amount as "closetoAmount",
       b.account_group_name as "accountGroupName",
       b.main_account_id as "mainAccountId",
       b.deserve_quata as "deserveQuata",
       b.bcm_bank_code as "bcmBankCode",
       nvl(e.BALANCE, 0) as "accountBalance",
       nvl(e.AVAILABLE_BALANCE, 0) as "canuseBalance",
       a.launch_mthd as "launchMthd",
       a.launch_time as "launchTime",
       a.virtual_acc_no as "virtualAccNo",
       a.virtual_bank_acc_no as "virtualBankAccNo",
       a.virtual_check_acc_no as "virtualCheckAccNo",
       c.bank_inteface_type as "bankIntefaceType",
       c.CURRENCY_NO as "curCode"
  from GTSB_ACCOUNT         a,
       GTSB_account_group   b,
       VW_GTSB_BANK_ACCOUNT mainc,
       VW_GTSB_BANK_ACCOUNT c
  left join VW_GTSB_BANK d
    on d.bank_code = c.bank_code
  left join (select t2.*
               from (select t1.*,
                            ROW_NUMBER() over(partition by t1.account_number order by t1.savedate desc) balance_row_number
                       from gtsa_account_balanace t1) t2
              where t2.balance_row_number = 1) e
    on c.ACCOUNT_NO = e.account_number
 where a.bcm_account_id = c.bank_account_id
   and a.account_group_id = b.account_group_id
   and b.main_account_id = mainc.bank_account_id
   and b.account_group_level is not null
   and c.domestic = 1
   and mainc.ACCOUNT_TYPE = 5
------------------------------------------------------

select * from FTS_ACCOUNT_GROUP;

----------------------------------------------------------
select * from fts_order;
select * from gtsa_account;
-------------------------------------


    
    select c.bank_account_id as "bankAccountId",
           c.account_no as "accountNo",
           c.account_name as "accountName",
           c.account_short_name as "accountShortName",
           c.bank_code as "bankCode",
           c.CUST_NAME as "custName",
           c.cust_no as "custNo",
           d.bank_name as "bankName",
           c.BANK_BRANCH_NAME as "bankBranchName",
           a.acc_record_id as "accRecordId",
           a.collect_flag as "collectFlag",
           a.allocate_flag as "allocateFlag",
           a.max_leave as "maxLeave",
           a.min_leave as "minLeave",
           a.collect_mthd as "collectMthd",
           a.collect_rate as "collectRate",
           a.closeto_amount as "closetoAmount",
           b.account_group_name as "accountGroupName",
           b.main_account_id as "mainAccountId",
           b.deserve_quata as "deserveQuata",
           b.bcm_bank_code as "bcmBankCode",
           nvl(e.BALANCE, 0) as "accountBalance",
           nvl(e.AVAILABLE_BALANCE, 0) as "canuseBalance",
           a.launch_mthd as "launchMthd",
           a.launch_time as "launchTime",
           a.virtual_acc_no as "virtualAccNo",
           a.virtual_bank_acc_no as "virtualBankAccNo",
           a.virtual_check_acc_no as "virtualCheckAccNo",
           c.bank_inteface_type as "bankIntefaceType",
           c.currency_no as "curCode",
           0 as "gapAmount"
      from GTSB_ACCOUNT         a,
           GTSB_account_group   b,
           VW_GTSB_BANK_ACCOUNT mainc,
           VW_GTSB_BANK_ACCOUNT c
      left join VW_GTSB_BANK d
        on d.bank_code = c.bank_code
      left join (select t2.*
                   from (select t1.*,
                                ROW_NUMBER() over(partition by t1.account_number order by t1.savedate desc) balance_row_number
                           from gtsa_account_balanace t1) t2
                  where t2.balance_row_number = 1) e
        on c.ACCOUNT_NO = e.account_number
     where a.bcm_account_id = c.bank_account_id
       and a.account_group_id = b.account_group_id
       and b.main_account_id = mainc.bank_account_id
       and b.account_group_level is not null
       and c.domestic = 1
       and mainc.ACCOUNT_TYPE = 5
       and a.collect_flag in (1)
       and a.account_group_id = 21
-------------------------------------------

--查询所有账户组 G6

select this_.ACCOUNT_GROUP_ID    as ACCOUNT1_32_0_,
       this_.ACCOUNT_GROUP_NO    as ACCOUNT2_32_0_,
       this_.ACCOUNT_GROUP_NAME  as ACCOUNT3_32_0_,
       this_.ACCOUNT_GROUP_LEVEL as ACCOUNT4_32_0_,
       this_.MAIN_ACCOUNT_ID     as MAIN5_32_0_,
       this_.DESERVE_QUATA       as DESERVE6_32_0_,
       this_.CURRENCY_CODE       as CURRENCY7_32_0_,
       this_.CURRENCY_NAME       as CURRENCY8_32_0_,
       this_.BCM_BANK_CODE       as BCM9_32_0_,
       this_.CHILD_ACCOUNT_NUM   as CHILD10_32_0_
  from FTS_ACCOUNT_GROUP this_
 where this_.ACCOUNT_GROUP_LEVEL is not null

--------------------------------------------------



select a.BANK_ACCOUNT_ID    as "bankAccountId",
       a.BANK_CODE          as "bankCode",
       a.ACCOUNT_INDEX      as "accountIndex",
       a.ACCOUNT_SHORT_NAME as "accountShortName",
       a.ACCOUNT_NO         as "accountNo",
       a.ACCOUNT_NAME       as "accountName",
       a.CUST_NO            as "custNo",
       a.CUST_NAME          as "custName",
       a.ACCOUNT_TYPE       as "accountType",
       a.CURRENCY_NO        as "currencyNo",
       a.CURRENCY_NAME      as "currencyName",
       a.ACCOUNT_STATE      as "accountState",
       a.BELONGTO_FLAG      as "belongtoFlag",
       b.BANK_NAME          as "bankName",
       a.BANK_BRANCH_NAME   as "bankBranchName",
       d.cust_tree_no       as "custTreeNo",
       e.account_balance    as "accountBalance",
       e.canuse_balance     as "canuseBalance"
  from VW_FTS_BANK_ACCOUNT a
  left join VW_FTS_BANK b
    on a.BANK_CODE = b.BANK_CODE
  left join VW_FTS_BANK_BRANCH c
    on a.BRANCH_BANK_CODE = c.BANK_CODE
   and a.BRANCH_STAND_REGION_CODE = c.STAND_REGION_CODE
  left join VW_FTS_CUSTOMER d
    on a.cust_no = d.cust_no
  left join (select t2.*
               from (select t1.*,
                            ROW_NUMBER() over(partition by t1.bank_account_id order by t1.update_time desc) balance_row_number
                       from VW_FTS_ACCOUNT_BALANCE t1) t2
              where t2.balance_row_number = 1) e
    on a.bank_account_id = e.bank_account_id
 where 1 = 1
--------------------------------------------
select * from wfpage w where w.appno like 'GTSB%';
------------------------------------------------------------------
select * from clt_clt_info;
select *
  from bp3_front_node
        select * from bp3_bank_account;
select * from nsclient;
select a.cltno as "cltNo", a.cltName as "cltName", a.nstype as "cltType"
  from nsclient a
 where 1 = 1;
select * from gtsb_order;
select * from fer_tx;
select * from gtsb_order;
---------------------------------------------------------------

select * from gtsa_account_type;
------------
select * from VW_GTSB_BANK_ACCOUNT;
select * from GTSB_ACCOUNT;

select * from GTSa_ACCOUNT;
select * from gtsa_acc_tx_map;

select * from admp_standard_bank sbk ;
update admp_standard_bank sbk set sbk.connect_flag = 1 where sbk.bank_code = '01';
select t.bank_code as "bankCode", t.bank_name as "bankName"
  from admp_standard_bank t
 where t.connect_flag = #connectFlag#
;


select t.bank_code as "bankCode", t.bank_name as "bankName"  	  from admp_standard_bank t  	 where t.connect_flag = 1;
---------------------------------------
select * from um_currency um   where um.isenable = 1;

select * from sap_exc_rate;

select * from safeexchangerate;


alter table gtsa_account add constraint uk_gtsa_account_acc_code unique(account_code) ;




select a.cltno as "cltNo", a.cltName as "cltName", a.nstype as "cltType"
  from nsclient a
 where 1 = 1
   and a.cltno like '%' || '001' || '%'
;
