
select distinct a.account_no       as "accountNo",
                a.account_name     as "accountName",
                a.bank_no          as "bankNo",
                a.cust_no          as "custNo",
                d.bank_name        as "bankName",
                g.bank_branch_no   as "openBankNo",
                g.bank_branch_name as "openBankName",
                c.max_amount       as "maxAmount",
                c.main_acnt_flag   as "mainAcntFlag",
                d.inner_outer_flag as "innerOuterFlag",
                d.connect_flag     as "connectFlag",
                a.account_type     as "accountType"
  from ibs_account a
  left join pub_bank_branch g
    on g.bank_branch_no = a.open_bank_no
  join (select distinct p.ibs_account_id, t.cust_id, t.opening_biz_id
          from ibs_opening_biz t
          join ibs_cust_account p
            on t.opening_biz_id = p.opening_biz_id
         where p.active_flag = 1
           and t.active_flag = 1
           and t.cust_id = 2) mon m.ibs_account_id = a.ibs_account_id
  join ibs_user_account c
    on c.ibs_account_id = a.ibs_account_id
   and ((c.login_Id = 26 and c.biz_right = 1))
  join pub_bank d
    on d.bank_code = a.bank_no
  join ibs_acc_type_biz_type e
    on e.account_type_no = a.account_type
  join ibs_biz_type f
    on f.biz_type_id = e.biz_type_id
   and f.active_flag = 1
   and (f.biz_type_code = 'INNER_PAYMENT')
 where ((exists (select null
                   from ibs_opening_biz i
                  where i.biz_type_id = e.biz_type_id
                    and i.cust_id = 2
                    and i.opening_biz_id = m.opening_biz_id
                    and i.active_flag = 1)))
 order by "mainAcntFlag" desc,
          "accountNo"
          /*160505-190754.807 |[ACTIVE] ExecuteThread: '0' for queue: 'weblogic.kernel.Default (self-tuning)'| ID=5746246,MD=statement,ET=0ms*/
            SELECT 1
              FROM DUAL
                   /*160505-190754.808 |[ACTIVE] ExecuteThread: '0' for queue: 'weblogic.kernel.Default (self-tuning)'| ID=5746246,MD=statement,ET=1ms*/
                   
                     select distinct a.account_no       as "accountNo",
                                     a.account_name     as "accountName",
                                     a.bank_no          as "bankNo",
                                     a.cust_no          as "custNo",
                                     d.bank_name        as "bankName",
                                     g.bank_branch_no   as "openBankNo",
                                     g.bank_branch_name as "openBankName",
                                     c.max_amount       as "maxAmount",
                                     c.main_acnt_flag   as "mainAcntFlag",
                                     d.inner_outer_flag as "innerOuterFlag",
                                     d.connect_flag     as "connectFlag",
                                     a.account_type     as "accountType"
                       from ibs_account a
                       left join pub_bank_branch g
                         on g.bank_branch_no = a.open_bank_no
                       join (select distinct p.ibs_account_id,
                                             t.cust_id,
                                             t.opening_biz_id
                               from ibs_opening_biz t
                               join ibs_cust_account p
                                 on t.opening_biz_id = p.opening_biz_id
                              where p.active_flag = 1
                                and t.active_flag = 1
                                and t.cust_id = 2) m
                         on m.ibs_account_id = a.ibs_account_id
                       join ibs_user_account c
                         on c.ibs_account_id = a.ibs_account_id
                        and ((c.login_Id = 26 and c.biz_right = 1))
                       join pub_bank d
                         on d.bank_code = a.bank_no
                       join ibs_acc_type_biz_type e
                         on e.account_type_no = a.account_type
                       join ibs_biz_type f
                         on f.biz_type_id = e.biz_type_id
                        and f.active_flag = 1
                        and (f.biz_type_code = 'OUTER_PAYMENT')
                      where ((exists
                             (select null
                                 from ibs_opening_biz i
                                where i.biz_type_id = e.biz_type_id
                                  and i.cust_id = 2
                                  and i.opening_biz_id = m.opening_biz_id
                                  and i.active_flag = 1)))
                      order by "mainAcntFlag" desc, "accountNo"
;
    
 select * from ibs_account ;

select * from user_constraints c where c.constraint_name = 'FK_IBS_REL_REL_ACCOU_PUB_BANK';
IBS_REL_ACCOUNT

select * from PUB_BANK;
select * from wfpage ;

select * from ibs_order t ;


insert into IBS_ORDER
  (BIZ_TYPE_ID,
   CUST_ID,
   OP_CUST_ID,
   FINANCE_SYSTEM_ID,
   CUST_NAME,
   ACCOUNT_NO,
   ACCOUNT_NAME,
   BANK_NO,
   OP_ACCOUNT_NO,
   OP_ACCOUNT_NAME,
   OP_BANK_NO,
   CREATE_TIME,
   LAST_UPDATE_TIME,
   LOGIN_ID,
   AMOUNT,
   ACT_DATE,
   ORIGIN_BIZ_NO,
   CUST_RECONCILIATION_FLAG,
   ERP_BIZ_NO,
   REMARK,
   ORDER_STATE,
   WORKFLOW_ID,
   WORKFLOW_TAG,
   BIZ_LABEL,
   BIZ_FLOW_CASE_ID,
   FLOW_SEGMENT,
   FUTURE_FLAG,
   FS_ERROR_CODE,
   REJECT_STATE,
   INNER_TRANS_STATE,
   OUTER_TRANS_STATE,
   BIZ_ACCEPT_STATE,
   BIZ_ACCEPT_NO,
   HOST_TX_ID,
   BCS_TX_ID,
   OPERATE_RESULT,
   ERR_CODE,
   ERR_MESSAGE,
   AFFIRM_TIME,
   CHECK_TIME,
   RATIFY_TIME,
   RECEIVE_TIME,
   CREATOR,
   CHECKER,
   RATIFIER,
   RECEIVER,
   HOST_EXEC_TIME,
   PRINT_COUNT,
   EXCEPTION_CODE,
   EXCEPTION_MESSAGE,
   ASSIGNED_RECEIVER_ID,
   ASSIGNED_RECEIVER,
   SUBJECT_NO,
   SUBJECT_NAME,
   OP_SUBJECT_NO,
   OP_SUBJECT_NAME,
   PAYMENT_DATE,
   BOOK_KEEPER,
   DIRECTOR_SIGN,
   PURPOSE,
   SUSPECT_REPEATED_FLAG,
   SUSPECT_REPEATED_REASON,
   FINGER_PRINT,
   SEND_FLAG,
   POST_SCRIPT,
   BDG_NO,
   ORIGIN_PROT_NO,
   SAMEORG,
   URGENT_LEVEL,
   OP_PROVINCE_CODE,
   OP_REGION_CODE,
   OP_REGION_NAME,
   OP_OPEN_BANK_NAME,
   OP_OPEN_BANK_NO,
   OP_OPEN_BANK_CNAPS,
   FETCH_FUND_FLAG,
   CASH_ACC_FLAG,
   BANK_REGION_NAME,
   OP_BANK_REGION_NAME,
   BIZ_TYPE_CODE,
   ORDER_ID)
values
  (2,
   2,
   '',
   '',
   '深圳斯凯',
   '9004-01',
   '深圳斯凯',
   '00',
   'sd',
   'sdfsd',
   '-1',
sysdate,
   '',
   26,
   10.8,
   sysdate,
   '',
   '',
   '',
   '',
   1,
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   2,
   0,
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '北京经办',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   'sdfsfs',
   '',
   '',
   '',
   0,
   '',
   '',
   '',
   0,
   1,
   '11',
   '11',
   '',
   '中国人民银行营业管理部营业室',
   '',
   '001100011002',
   '',
   '',
   '',
   '北京',
   'OUTER_PAYMENT',
   s_ibs_order.nextval)
;


select * from ibs_order_trace t order by t.order_id desc;

select * from ibs_order o where o.order_id = 3513 for update nowait;

select * from ibs_order o where o.order_id = 3571 for update nowait;


select * from ibs_order o where o.order_id = 3582 for update nowait;
