
select *
  from (select p1.*, ROWNUM r
          from (select bo.bcm_order_id as "bcmOrderId",
                       bo.order_status as "orderStatus",
                       TO_CHAR(bo.order_date, 'yyyy-mm-dd') as "orderDate",
                       bo.order_type as "orderType",
                       bo.order_amount as "orderAmount",
                       bo.pay_acc_no as "payAccNo",
                       bo.pay_acc_name as "payAccName",
                       ba.account_short_name as "payAccShortName",
                       bo.receive_acc_no as "receiveAccNo",
                       bo.receive_acc_name as "receiveAccName",
                       ra.account_short_name as "receiveAccShortName",
                       ba.bank_branch_name as "payBankName",
                       ra.bank_branch_name as "receiveBankName",
                       bo.span_bank_flag as "spanBankFlag",
                       bo.related_order_id as "relatedOrderId",
                       TO_CHAR(bo.create_time, 'yyyy-mm-dd HH24:MI:ss') as "createTime",
                       bo.package_id as "packageId",
                       bo.purpose as "purpose",
                       '' as "checkAccNo",
                       '' as "checkAccName",
                       '' as "inputer"
                  from fts_order bo
                  left join VW_FTS_BANK_ACCOUNT ba
                    on ba.account_no = bo.pay_acc_no
                  left join VW_FTS_BANK_ACCOUNT ra
                    on ra.account_no = bo.receive_acc_no
                  left join nsclient ns
                    on ba.cust_no = ns.cltno
                 where 1 = 1
                 order by bo.bcm_order_id desc) p1
         where ROWNUM < 1 * 50 + 1) p2
 where p2.r > (1 - 1) * 50

/*160328-183734.281 |http-9999-5| ID=22440829,MD=statement,ET=23ms*/

  select count(*) as "total"
          from (select bo.bcm_order_id as "bcmOrderId",
                  bo.order_status as "orderStatus",
                  TO_CHAR(bo.order_date, 'yyyy-mm-dd') as "orderDate",
                  bo.order_type as "orderType",
                  bo.order_amount as "orderAmount",
                  bo.pay_acc_no as "payAccNo",
                  bo.pay_acc_name as "payAccName",
                  ba.account_short_name as "payAccShortName",
                  bo.receive_acc_no as "receiveAccNo",
                  bo.receive_acc_name as "receiveAccName",
                  ra.account_short_name as "receiveAccShortName",
                  ba.bank_branch_name as "payBankName",
                  ra.bank_branch_name as "receiveBankName",
                  bo.span_bank_flag as "spanBankFlag",
                  bo.related_order_id as "relatedOrderId",
                  TO_CHAR(bo.create_time, 'yyyy-mm-dd HH24:MI:ss') as "createTime",
                  bo.package_id as "packageId",
                  bo.purpose as "purpose",
                  '' as "checkAccNo",
                  '' as "checkAccName",
                  '' as "inputer"
             from fts_order bo
             left join VW_FTS_BANK_ACCOUNT ba
               on ba.account_no = bo.pay_acc_no
             left join VW_FTS_BANK_ACCOUNT ra
               on ra.account_no = bo.receive_acc_no
            where 1 = 1
            order by bo.bcm_order_id desc)
         
         /*160328-183734.713 |http-9999-5| ID=22440829,MD=statement,ET=406ms*/
         
           select *
             from (select p1.*, ROWNUM r
                     from (select bo.order_id as "orderId",
                                  bo.order_status as "orderStatus",
                                  bo.order_type as "orderType",
                                  gt.order_name as "orderName",
                                  bo.order_amount as "orderAmount",
                                  uc.codename as "currencyName",
                                  bo.pay_acc_no as "payAccNo",
                                  bo.pay_acc_name as "payAccName",
                                  ba.account_short_name as "payAccShortName",
                                  bo.receive_acc_no as "receiveAccNo",
                                  bo.receive_acc_name as "receiveAccName",
                                  ra.account_short_name as "receiveAccShortName",
                                  ba.bank_branch_name as "payOpenBankName",
                                  sb.bank_name as "payBankName",
                                  sb2.bank_name as "receiveBankName",
                                  ra.bank_branch_name as "receiveOpenBankName",
                                  bo.span_bank_flag as "spanBankFlag",
                                  bo.related_order_id as "relatedOrderId",
                                  nc.cltname as "custName",
                                  bo.settle_account_no as "settleAccountNo",
                                  TO_CHAR(bo.order_date, 'yyyy-mm-dd') as "orderDate",
                                  TO_CHAR(bo.create_time,
                                          'yyyy-mm-dd HH24:MI:ss') as "createTime",
                                  bo.package_id as "packageId",
                                  bo.purpose as "purpose",
                                  bo.urgent as "urgent",
                                  bo.input_time as "inputTime",
                                  bo.FS_ERROR_TEXT as "fsErrorText",
                                  mu.uname as "inputor"
                             from GTSB_order bo
                             left join GTSB_ORDER_TYPE gt
                               on bo.order_type = gt.order_type
                             left join VW_GTSB_BANK_ACCOUNT ba
                               on ba.account_no = bo.pay_acc_no
                             left join VW_GTSB_BANK_ACCOUNT ra
                               on ra.account_no = bo.receive_acc_no
                             left join um_currency uc
                               on bo.currency_no = uc.codeno
                             left join wf_master_user mu
                               on bo.inputor = mu.uno
                             left join admp_standard_bank sb
                               on ba.BANK_CODE = sb.bank_code
                             left join admp_standard_bank sb2
                               on ra.BANK_CODE = sb2.bank_code
                             left join nsclient nc
                               on bo.cust_no = nc.cltno
                            where 1 = 1
                            order by bo.order_id desc) p1
                    where ROWNUM < 1 * 50 + 1) p2
            where p2.r > (1 - 1) * 50
           
           /*160328-183734.767 |http-9999-5| ID=22440829,MD=statement,ET=37ms*/
           
             select count(*) as "total"
                     from (select bo.order_id as "orderId",
                            bo.order_status as "orderStatus",
                            bo.order_type as "orderType",
                            gt.order_name as "orderName",
                            bo.order_amount as "orderAmount",
                            uc.codename as "currencyName",
                            bo.pay_acc_no as "payAccNo",
                            bo.pay_acc_name as "payAccName",
                            ba.account_short_name as "payAccShortName",
                            bo.receive_acc_no as "receiveAccNo",
                            bo.receive_acc_name as "receiveAccName",
                            ra.account_short_name as "receiveAccShortName",
                            ba.bank_branch_name as "payOpenBankName",
                            sb.bank_name as "payBankName",
                            sb2.bank_name as "receiveBankName",
                            ra.bank_branch_name as "receiveOpenBankName",
                            bo.span_bank_flag as "spanBankFlag",
                            bo.related_order_id as "relatedOrderId",
                            nc.cltname as "custName",
                            bo.settle_account_no as "settleAccountNo",
                            TO_CHAR(bo.order_date, 'yyyy-mm-dd') as "orderDate",
                            TO_CHAR(bo.create_time,
                                    'yyyy-mm-dd HH24:MI:ss') as "createTime",
                            bo.package_id as "packageId",
                            bo.purpose as "purpose",
                            bo.urgent as "urgent",
                            bo.input_time as "inputTime",
                            mu.uname as "inputor"
                       from GTSB_order bo
                       left join GTSB_ORDER_TYPE gt
                         on bo.order_type = gt.order_type
                       left join VW_GTSB_BANK_ACCOUNT ba
                         on ba.account_no = bo.pay_acc_no
                       left join VW_GTSB_BANK_ACCOUNT ra
                         on ra.account_no = bo.receive_acc_no
                       left join um_currency uc
                         on bo.currency_no = uc.codeno
                       left join wf_master_user mu
                         on bo.inputor = mu.uno
                       left join admp_standard_bank sb
                         on ba.BANK_CODE = sb.bank_code
                       left join admp_standard_bank sb2
                         on ra.BANK_CODE = sb2.bank_code
                       left join nsclient nc
                         on bo.cust_no = nc.cltno
                      where 1 = 1
                      order by bo.order_id desc)
