select *
  from (select accb.*, rownum r
          from gtsa_account_balanace accb
         where 1 = 1 /*and accb.account_number = #accountNo#*/
         order by accb.savedate desc) c
 where c.r < 2;
---------------------------------------------------------------------------------------------------------
select *
  from gtsa_account_balanace bl
 where bl.savedate =
       (select max(bl2.savedate)
          from gtsa_account_balanace bl2
         where bl.account_number = bl2.account_number)
   and bl.account_number = '201512030011' /*#accountNo#*/
;
         
---------------------------------------------------------------------------------------------------------
select * from gtsa_account_balanace  bl where bl.account_number = '501510980553';
select * from bp3_bank_account_balance bl where bl.account_no = '501510982245';
/*
501510982237
501510980553

50510980556
*/
---------------------------------------------------------------------------------------------------------
select t.account_name as "accountName",
       case
         when bk.is_domestic = 1 then
          (select cn.opbankname from cnaps cn where cn.cnapsno = bk.bank_name)
         when bk.is_domestic = 2 then
          bk.bank_name
       end as "openBankName",
       t.cur_code as "curCode",
       bk.bank_no as "bankNo",
       bl3.available_balance as "availableBalance"
  from gtsa_account t
  left join gtsa_bank_info bk
    on t.bank_id = bk.bank_id
  left join (select *
               from gtsa_account_balanace bl
              where bl.savedate =
                    (select max(bl2.savedate)
                       from gtsa_account_balanace bl2
                      where bl.account_number = bl2.account_number)) bl3
    on t.account_no = bl3.account_number
 where t.account_no = '11122222'


---------------------------------------------------------------------------------------------------------

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
  left join (select *
               from gtsa_account_balanace bl
              where bl.savedate =
                    (select max(bl2.savedate)
                       from gtsa_account_balanace bl2
                      where bl.account_number = bl2.account_number)) e
    on acc.ACCOUNT_NO = e.account_number
 where 1 = 1
   and ns.nstype = 0
   and b.bank_no = 'S1'
   and acc.cur_code = 'USD'
   and acc.account_type_id in (5, 3);
--------------------------------------------------------------------------------------------------------------------------------------------------------
 select acc.account_id as "accountid",
           umcur.codename as "curtypename",
           acc.account_no as "accountno",
           acc.account_name as "accountname",
           case
             when b.is_domestic = 1 then
              (select cn.opbankname
                 from cnaps cn
                where cn.cnapsno = b.bank_name)
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
      left join (select *
                   from gtsa_account_balanace bl
                  where bl.savedate =
                        (select max(bl2.savedate)
                           from gtsa_account_balanace bl2
                          where bl.account_number = bl2.account_number)) e
        on acc.ACCOUNT_NO = e.account_number
     where 1 = 1
       and ns.nstype = 0
       and b.bank_no = 'S1'
       and acc.cur_code = 'USD'
       and acc.account_type_id in (4)
------------------------------------------------------------------------------------------------------------------------------------------------------
select t2.*
  from (select t1.*,
               ROW_NUMBER() over(partition by t1.account_number order by t1.savedate desc) balance_row_number
          from gtsa_account_balanace t1) t2
 where t2.balance_row_number = 1
   and t2.account_number = '0140001504602';
 
 select *
  from gtsa_account_balanace bl
 where bl.savedate =
       (select max(bl2.savedate)
          from gtsa_account_balanace bl2
         where bl.account_number = bl2.account_number);
                        
-------------------------------------------------------------------------------------------------------------------------------------------------------
select t2.*
  from (select t1.*,
               ROW_NUMBER() over(partition by t1.account_number order by t1.savedate desc) balance_row_number
          from gtsa_account_balanace t1) t2
 where t2.balance_row_number = 1 and t2.account_number = ##
;
select * from gtsa_account;
------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
    select acc.account_id as "accountid",
           umcur.codename as "curtypename",
           acc.account_no as "accountno",
           acc.account_name as "accountname",
           case
             when b.is_domestic = 1 then
              (select cn.opbankname
                 from cnaps cn
                where cn.cnapsno = b.bank_name)
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
     where 1 = 1
       and ns.nstype = 0
       and b.bank_no = '16'
       and acc.cur_code = 'USD'
       and acc.account_type_id in (5)
------------------------------------------------------------------------------------------------------------------------------------------------------------------
    select acc.account_id as "accountid",
           umcur.codename as "curtypename",
           acc.account_no as "accountno",
           acc.account_name as "accountname",
           case
             when b.is_domestic = 1 then
              (select cn.opbankname
                 from cnaps cn
                where cn.cnapsno = b.bank_name)
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
     where 1 = 1
       and ns.nstype = 0
       and b.bank_no = 'S1'
       and acc.cur_code = 'USD'
       and acc.account_type_id in (4)
------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from gtsa_account t where t.account_no = '501510980556';
update gtsa_account t set t.gather_account = '924000000001' where t.account_no = '501510980556';
update gtsa_account t set t.account_type_id = 3 where t.account_no = '924000000001';
select * from gtsa_account_type ;
--924000000001

select t2.*
  from (select t1.*,
               ROW_NUMBER() over(partition by t1.account_number order by t1.savedate desc) balance_row_number
          from gtsa_account_balanace t1) t2
 where t2.balance_row_number = 1 ;
