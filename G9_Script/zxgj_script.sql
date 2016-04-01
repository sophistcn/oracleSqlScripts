    
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
----------------------------

select * from gtsb_account_group;
select * from fts_account_group;

select * from gtse_tx;
----------------------------------------



truncate table gtse_tx cascade;


select * from gtsb_account;



  select
        this_.ACCOUNT_GROUP_ID as ACCOUNT1_32_0_,
        this_.ACCOUNT_GROUP_NO as ACCOUNT2_32_0_,
        this_.ACCOUNT_GROUP_NAME as ACCOUNT3_32_0_,
        this_.ACCOUNT_GROUP_LEVEL as ACCOUNT4_32_0_,
        this_.MAIN_ACCOUNT_ID as MAIN5_32_0_,
        this_.DESERVE_QUATA as DESERVE6_32_0_,
        this_.CURRENCY_CODE as CURRENCY7_32_0_,
        this_.CURRENCY_NAME as CURRENCY8_32_0_,
        this_.BCM_BANK_CODE as BCM9_32_0_,
        this_.CHILD_ACCOUNT_NUM as CHILD10_32_0_ 
    from
        GTSB_ACCOUNT_GROUP this_ 
    where
        this_.ACCOUNT_GROUP_LEVEL is not null;
        
        
        select * from gtsb_account;
---------------------------------------------


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
   and a.belongto_flag = 1
   and a.bank_code = 'S1'
   and a.account_state = '1'
   and a.currency_no = 'USD'
   and a.cust_no in (select cc.cust_no
                       from VW_FTS_CUSTOMER cc
                      where cc.cust_tree_no like '001%')
   and a.cust_no in
       (select ns.cltno
          from nsclient ns
         where '001' = (select max(treeno)
                          from nsclient nb
                         where ns.treeno like nb.treeno || '%'
                           and ns.treeno != nb.treeno))
   and a.bank_account_id <> 21
   and a.bank_account_id not in
       (select ba.bcm_account_id
          from fts_account ba, fts_account_group bag
         where ba.account_group_id = bag.account_group_id
           and bag.account_group_level is not null)
 order by a.account_index
-----------------
select xx.*, o.order_num as "orderNum"
  from (select x.*
          from (select a.acc_record_id as "accRecordId",
                       a.collect_flag as "collectFlag",
                       a.allocate_flag as "allocateFlag",
                       a.max_leave as "maxLeave",
                       a.min_leave as "minLeave",
                       a.collect_mthd as "collectMthd",
                       a.collect_rate as "collectRate",
                       a.closeto_amount as "closetoAmount",
                       a.launch_mthd as "launchMthd",
                       a.launch_time as "launchTime",
                       a.virtual_acc_no as "virtualAccNo",
                       a.virtual_bank_acc_no as "virtualBankAccNo",
                       a.virtual_check_acc_no as "virtualCheckAccNo",
                       0 as "isAccountNeedCheck",
                       a.ACC_APP_ID as "accAppId",
                       a.ACC_APPLY_TYPE_NAME as "appTypeName",
                       a.STATE_DESC as "appStateDesc",
                       a.STATE as "appState",
                       b.account_group_name as "accountGroupName",
                       b.main_account_id as "mainAccountId",
                       b.deserve_quata as "deserveQuata",
                       b.bcm_bank_code as "bcmBankCode",
                       c.bank_account_id as "bankAccountId",
                       c.account_no as "accountNo",
                       c.account_name as "accountName",
                       c.account_short_name as "accountShortName",
                       c.bank_code as "bankCode",
                       c.cust_no as "custNo",
                       c.CUST_NAME as "custName",
                       d.bank_name as "bankName",
                       e.account_balance as "accountBalance",
                       e.canuse_balance as "canuseBalance",
                       e.account_date as "accountDate",
                       e.update_time as "updateTime",
                       c.BANK_BRANCH_NAME as "bankBranchName",
                       b.currency_code as "r_currencyNo",
                       b.currency_name as "r_currencyName",
                       d.bank_code as "r_bankNo",
                       d.bank_name as "r_bankName",
                       mainc.account_no as "r_accountNo",
                       mainc.account_name as "r_accountName",
                       d.bank_code as "r_opBankNo",
                       c.account_no as "r_opAccountNo",
                       c.account_name as "r_opAccountName",
                       e.canuse_balance as "r_opBalance",
                       a.min_leave as "r_remainMinAmount",
                       a.max_leave as "r_remainMaxAmount",
                       decode(a.collect_mthd,
                              1,
                              '按比例上收',
                              2,
                              '按整数上收') as "r_upMethod",
                       a.collect_rate as "r_upRate",
                       a.closeto_amount as "r_roundAmount",
                       decode('', 1, '', '') || decode('', 1, '', '') ||
                       decode(c.belongto_flag, 1, '', 2, '[' || '' || ']') as "purpose",
                       a.acc_record_id,
                       c.bank_account_id,
                       c.bank_code,
                       e.update_time,
                       e.ACCOUNT_DATE
                  from v_fts_account_no_need_check a,
                       fts_account_group           b,
                       VW_FTS_BANK_ACCOUNT         mainc,
                       VW_FTS_BANK_ACCOUNT         c
                  left join VW_FTS_BANK d
                    on d.bank_code = c.bank_code
                  left join VW_FTS_BANK_BRANCH g
                    on c.BRANCH_BANK_CODE = g.BANK_CODE
                   and c.BRANCH_STAND_REGION_CODE = g.STAND_REGION_CODE
                  left join VW_FTS_ACCOUNT_BALANCE e
                    on e.bank_account_id = c.bank_account_id
                   and e.ACCOUNT_DATE <= sysdate
                 where a.bcm_account_id = c.bank_account_id
                   and a.account_group_id = b.account_group_id
                   and b.main_account_id = mainc.bank_account_id
                   and b.account_group_level is not null
                   and a.collect_flag in (1, 4, 5)) x
          left join (select bab.bank_account_id,
                           max(bab.ACCOUNT_DATE) ACCOUNT_DATE
                      from VW_FTS_ACCOUNT_BALANCE bab
                     where bab.ACCOUNT_DATE <= sysdate
                     group by bab.bank_account_id) y
            on x.bank_account_id = y.bank_account_id
         where x.ACCOUNT_DATE = y.ACCOUNT_DATE
            or x.ACCOUNT_DATE is null
         order by x.bank_code) xx
  left join (select acc_record_id, count(bcm_order_id) order_num
               from fts_order
              where 1 = 1
              group by acc_record_id) o
    on xx.acc_record_id = o.acc_record_id
-------------------------------------
select * from user_constraints u where u.CONSTRAINT_NAME = 'FK_GTSB_ORD_REFERENCE_GTSB_ORD';
select * from gtsb_order_type;
select t.natureid from aims_account t where t.accountcode = '030105';
select * from aims_account_balance;
select * from aims_account_nature;
----------------------------



select * from gtsa_account t3 where t3.account_no = 'yly20160329005';
select * from ns_gs_settings ;

select * from fts_account ; 
select * from aims_account;


select * from gtsa_account_balanace t where t.id = 1;

------------------------



select a.BANK_ACCOUNT_ID as "bankAccountId",
       a.BANK_CODE as "bankCode",
       a.ACCOUNT_INDEX as "accountIndex",
       a.ACCOUNT_SHORT_NAME as "accountShortName",
       a.ACCOUNT_NO as "accountNo",
       a.ACCOUNT_NAME as "accountName",
       a.CUST_NO as "custNo",
       a.CUST_NAME as "custName",
       a.ACCOUNT_TYPE as "accountType",
       a.CURRENCY_NO as "currencyNo",
       a.CURRENCY_NAME as "currencyName",
       a.ACCOUNT_STATE as "accountState",
       a.BELONGTO_FLAG as "belongtoFlag",
       b.BANK_NAME as "bankName",
       a.BANK_BRANCH_NAME as "bankBranchName",
       d.cust_tree_no as "custTreeNo",
       nvl(e.BALANCE, 0) as "accountBalance",
       nvl(e.AVAILABLE_BALANCE, 0) as "canuseBalance"
  from VW_GTSB_BANK_ACCOUNT a
  left join VW_GTSB_BANK b
    on a.BANK_CODE = b.BANK_CODE
  left join VW_GTSB_CUSTOMER d
    on a.cust_no = d.cust_no
  left join (select t2.*
               from (select t1.*,
                            ROW_NUMBER() over(partition by t1.account_number order by t1.savedate desc) balance_row_number
                       from gtsa_account_balanace t1) t2
              where t2.balance_row_number = 1) e
    on a.ACCOUNT_NO = e.account_number
 where 1 = 1
   and (a.belongto_flag = 1 or a.belongto_flag = 4)
   and a.bank_code = '01'
   and a.currency_no = 'GBP'
   and a.domestic = 1
   and (a.ACCOUNT_TYPE = 3 or a.ACCOUNT_TYPE = 2)
   and a.cust_no in (select cc.cust_no
                       from VW_GTSB_CUSTOMER cc
                      where cc.cust_tree_no like '002%')
   and a.bank_account_id <> 25
   and a.bank_account_id not in
       (select ba.bcm_account_id
          from GTSB_account ba, GTSB_account_group bag
         where ba.account_group_id = bag.account_group_id
           and bag.account_group_level is not null)
 order by a.account_index;
-------------------
select t2.accountid,t2.* from aims_account t2;
update aims_account t3 set t3.accountid = 999 where t3.accountcode = '0101wzp2751';

-----------------------------

select * from  gtsa_bank_info ;



------------------------
select * from bizcase c order by c.caseid desc;
