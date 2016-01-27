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
