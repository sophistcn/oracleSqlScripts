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
