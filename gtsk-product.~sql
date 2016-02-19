select * from gtsk_tx t where t.tx_type_id = 3;

select t.NATURE           as "country",
       t.account_no       as "accountNo",
       t.account_name     as "accountName",
       t.CLT_ADDRESS      as "cltAddress",
       t.BANK_BRANCH_NAME as "opOpenBankName",
       t.BANK_CODE        as "opBankNo",
       t.bank_swift_no    as "bankSwiftNo",
       t.bank_address     as "bankAddress"
  from vw_gtsk_bank_account t
 where 1 = 1
   and t.ACCOUNT_TYPE = 2
   and t.currency_no = 'CNX';

select * from vw_gtsk_bank_account;

----------------------------------------------------------

select t.tx_id as txId,
       t.contract_no as contractNo,
       rg.contract_type as contractType,
       to_char(t.act_date, 'yyyy-mm-dd') as actDate,
       t.amount as amount,
       clt.chinesename as custName,
       clt1.chinesename as opCustName,
       nvl((select sum(t1.amount)
             from gtsk_tx t1
            where t1.relate_tx_id = t.tx_id
              and t1.tx_state = 10),
           0) as returnAmt,
       rg.contract_state as contractState
  from gtsk_tx t
 inner join gtsk_contract_register rg
    on t.tx_id = rg.tx_id
  left join clt_clt_info clt
    on t.cust_no = clt.cltno
  left join clt_clt_info clt1
    on t.op_cust_no = clt1.cltno
 where 1 = 1
 order by t.tx_id desc;

select * from gtsk_contract_register;

------------------------------------------------

select * from gtsk_tx t where t.tx_id = 43;
select * from GTSK_PAYMENT_REGISTER r;
select * from gtsk_contract_register;

select t.tx_id as txId,
       t.contract_no as contractNo,
       rg.contract_type as contractType,
       to_char(t.act_date, 'yyyy-mm-dd') as actDate,
       t.amount as amount,
       clt.chinesename as custName,
       clt1.chinesename as opCustName,
       nvl((select sum(t1.amount)
             from gtsk_tx t1
            where t1.relate_tx_id = t.tx_id
              and t1.tx_state = 10),
           0) as returnAmt,
       rg.contract_state as contractState
  from gtsk_tx t
 inner join gtsk_contract_register rg
    on t.tx_id = rg.tx_id
  left join clt_clt_info clt
    on t.cust_no = clt.cltno
  left join clt_clt_info clt1
    on t.op_cust_no = clt1.cltno
 where 1 = 1
------------------------------------------------------------------------------------------------------
select * from gtsk_tx t where t.tx_id = 468;

select * from gtsk_contract_register;
select * from GTSK_PAYMENT_REGISTER r;
-----------------------------------select seq_gtsk_contract_register.nextval from dual;
