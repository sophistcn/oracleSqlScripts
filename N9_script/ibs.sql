
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
