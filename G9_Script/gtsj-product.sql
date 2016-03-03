select distinct (b.bank_code) as bankCode, b.bank_name as bankName
  from admp_standard_bank b
 where 1 = 1

 order by b.bank_code
------------------------------------------------
    
    select count(n.account_no) as accountTotal
      from admp_standard_bank s
      left join gtsa_bank_info t
        on s.bank_code = t.bank_no
      left join (select * from gtsa_account ga where 1 = 1) n
        on t.bank_id = n.bank_id
      left join gtsa_area a
        on n.account_location = a.area_code
     where 1 = 1
     group by s.bank_code
     order by s.bank_code
-----------------------------------
   
    select count(n.account_no) as accountTotal
      from admp_standard_bank s
      left join gtsa_bank_info t
        on s.bank_code = t.bank_no
      left join (select * from gtsa_account ga where 1 = 1) n
        on t.bank_id = n.bank_id
        and n.connect_way in (1, 2)
      left join gtsa_area a
        on n.account_location = a.area_code
     where 1 = 1
     group by s.bank_code
     order by s.bank_code
     
------------
select * from admp_standard_bank;

----------------------------

    
    select t.account_id as accountId,
           t.account_location as accountLocation,
           ar.area_name as areaName,
           um.name as countryName,
           c.chinesename as cltName,
           a.bank_name as bankName,
           t.account_no as accountNo,
           t.account_name as accountName,
           u.codename as codeName,
           decode(t.connect_way, 1, '联网', 2, '联网', 3, '非联网') as connectWay
      from Gtsa_Account t
      left join clt_clt_info c
        on t.cust_no = c.cltno
      left join GTSA_BANK_INFO g
        on t.bank_id = g.bank_id
      left join admp_standard_bank a
        on a.bank_code = g.bank_no
      left join um_currency u
        on u.codeno = t.cur_code
      left join um_country um
        on um.code = g.country
      left join gtsa_area ar
        on ar.area_code = t.account_location
     where 1 = 1
       and c.cltno = '001'
       and t.cur_code = 'USD'
     order by c.treeno
--------------------------------------------
  select count(n.account_no) as accountTotal
    from admp_standard_bank s
    left join gtsa_bank_info t
      on s.bank_code = t.bank_no
    left join (select * from gtsa_account ga where 1 = 1 and ga.connect_way in (1,2)) n
      on t.bank_id = n.bank_id
     
    left join gtsa_area a
      on n.account_location = a.area_code
   where 1 = 1
   group by s.bank_code
   order by s.bank_code
--------------------


 select n.*
    from admp_standard_bank s
    left join gtsa_bank_info t
      on s.bank_code = t.bank_no
    left join (select * from gtsa_account ga where 1 = 1 and ga.connect_way in (1,2)) n
      on t.bank_id = n.bank_id
    left join gtsa_area a
      on n.account_location = a.area_code
   where 1 = 1 and s.bank_code = '01'


--------------------------------------
 select s.*
    from admp_standard_bank s
    left join gtsa_bank_info t
      on s.bank_code = t.bank_no
    left join (select * from gtsa_account ga where 1 = 1) n
      on t.bank_id = n.bank_id
     and n.connect_way in (1, 2)
    left join gtsa_area a
      on n.account_location = a.area_code
   where 1 = 1 
   
   ---------------------------------------------
   
   
   
    
    select count(CASE
                   WHEN s.bank_code = 01 THEN
                    g.account_no
                 END) bank1,
           count(CASE
                   WHEN s.bank_code = 02 THEN
                    g.account_no
                 END) bank2,
           count(CASE
                   WHEN s.bank_code = 03 THEN
                    g.account_no
                 END) bank3,
           count(CASE
                   WHEN s.bank_code = 04 THEN
                    g.account_no
                 END) bank4,
           count(CASE
                   WHEN s.bank_code = 05 THEN
                    g.account_no
                 END) bank5,
           count(CASE
                   WHEN s.bank_code = 06 THEN
                    g.account_no
                 END) bank6,
           count(CASE
                   WHEN s.bank_code = 07 THEN
                    g.account_no
                 END) bank7,
           count(CASE
                   WHEN s.bank_code = 08 THEN
                    g.account_no
                 END) bank8,
           count(CASE
                   WHEN s.bank_code = 09 THEN
                    g.account_no
                 END) bank9,
           count(CASE
                   WHEN s.bank_code = 10 THEN
                    g.account_no
                 END) bank10,
           count(CASE
                   WHEN s.bank_code = 11 THEN
                    g.account_no
                 END) bank11,
           count(CASE
                   WHEN s.bank_code = 12 THEN
                    g.account_no
                 END) bank12,
           count(CASE
                   WHEN s.bank_code = 13 THEN
                    g.account_no
                 END) bank13,
           count(CASE
                   WHEN s.bank_code = 14 THEN
                    g.account_no
                 END) bank14,
           count(CASE
                   WHEN s.bank_code = 15 THEN
                    g.account_no
                 END) bank15,
           a.area_name as areaName,
           a.area_code as areaCode,
           count(g.account_no) as totalCount
      from gtsa_area a
      left join (select * from gtsa_account ga where 1 = 1) g
        on g.account_location = a.area_code
      left join gtsa_bank_info bk
        on g.bank_id = bk.bank_id
      left join admp_standard_bank s
        on s.bank_code = bk.bank_no
     where 1 = 1
       and g.connect_way in (1, 2)
     group by a.area_code, a.area_name
---------------------------------------------------------------------------------------------



select t.account_id as accountId,
       t.account_location as accountLocation,
       ar.area_name as areaName,
       um.name as countryName,
       c.chinesename as cltName,
       a.bank_name as bankName,
       t.account_no as accountNo,
       t.account_name as accountName,
       u.codename as codeName,
       decode(t.connect_way, 1, '联网', 2, '联网', 3, '非联网') as connectWay
  from Gtsa_Account t
  left join clt_clt_info c
    on t.cust_no = c.cltno
  left join GTSA_BANK_INFO g
    on t.bank_id = g.bank_id
  left join admp_standard_bank a
    on a.bank_code = g.bank_no
  left join um_currency u
    on u.codeno = t.cur_code
  left join um_country um
    on um.code = g.country
  left join gtsa_area ar
    on ar.area_code = t.account_location
 where 1 = 1
   and t.connect_way in (1, 2)
   and g.bank_no = '01'
   and t.account_location = '1'
 order by c.treeno;
-----------------------------------


 
 select c.cltno as cltno,
        c.chinesename as cltName,
        count(decode(g.connect_way, 1, 1, 2, 1, null)) as connectCount,
        count(decode(g.connect_way, 3, 1, null)) as notConnectCount,
        count(g.account_no) as totalConnectCount
   from clt_clt_info c
   left join gtsa_account g
     on g.cust_no = c.cltno
  where 1 = 1
  group by c.cltno, c.chinesename, c.treeno
  order by c.treeno

------------------------------------------------------------------
    
    select t.account_id as accountId,
           t.account_location as accountLocation,
           ar.area_name as areaName,
           um.name as countryName,
           c.chinesename as cltName,
           a.bank_name as bankName,
           t.account_no as accountNo,
           t.account_name as accountName,
           u.codename as codeName,
           decode(t.connect_way, 1, '联网', 2, '联网', 3, '非联网') as connectWay
      from Gtsa_Account t
      left join clt_clt_info c
        on t.cust_no = c.cltno
      left join GTSA_BANK_INFO g
        on t.bank_id = g.bank_id
      left join admp_standard_bank a
        on a.bank_code = g.bank_no
      left join um_currency u
        on u.codeno = t.cur_code
      left join um_country um
        on um.code = g.country
      left join gtsa_area ar
        on ar.area_code = t.account_location
     where 1 = 1
       and c.cltno = '2014102701'
     order by c.treeno
;

-------------------------------------------------------

    
    select c.bank_name as bankName,
           nvl(c.sumBl / 10000, 0) as sumBalance,
           nvl((c.sumBl /
               (select case
                          when '' is null then
                           sum(bl.balance * r.price / 100)
                          when '' is not null then
                           sum(bl.balance)
                        end as sumBl
                   from (select *
                           from gtsa_account acc
                           left join gtsa_account_balanace bl
                             on acc.account_no = bl.account_number
                            and bl.savedate =
                                (select max(savedate)
                                   from gtsa_account_balanace blk
                                  where blk.account_number = acc.account_no)) bl
                   left join admp_standard_bank sbk
                     on bl.bank_no = sbk.bank_code
                   left join (select b.no, MEDIAN_PRICE price
                               from RMS_EXC_RATE a
                               join RMS_CURRENCY b
                                 on a.CY_ID = b.ID
                              where STATE = 2
                                AND IS_STOP = 0
                                and a.active_date =
                                    (select max(active_date)
                                       from rms_exc_rate t
                                      where t.cy_id = a.cy_id)) r
                     on bl.currency_code = r.no
                  where 1 = 1
                    and bl.account_location = '1'
                    and bl.connect_way = 3)) * 100,
               0) as sumBalanceRate,
           case
             when '1' is null then
              '所有区域'
             when '1' is not null then
              (select ar.area_name
                 from gtsa_area ar
                where ar.area_code = '1'
                  and rownum = 1)
           end as areaName
      from (select sbk.bank_name,
                   case
                     when '' is null then
                      sum(bl.balance * r.price / 100)
                     when '' is not null then
                      sum(bl.balance)
                   end as sumBl
              from gtsa_account acc
              left join gtsa_account_balanace bl
                on acc.account_no = bl.account_number
               and bl.savedate =
                   (select max(savedate)
                      from gtsa_account_balanace blk
                     where blk.account_number = acc.account_no)
              left join admp_standard_bank sbk
                on bl.bank_no = sbk.bank_code
              left join (select b.no, MEDIAN_PRICE price
                          from RMS_EXC_RATE a
                          join RMS_CURRENCY b
                            on a.CY_ID = b.ID
                         where STATE = 2
                           AND IS_STOP = 0
                           and a.active_date =
                               (select max(active_date)
                                  from rms_exc_rate t
                                 where t.cy_id = a.cy_id)) r
                on bl.currency_code = r.no
             where 1 = 1
               and acc.account_location in (select area_code from gtsa_area)
               and acc.account_location = '1'
               and acc.connect_way = 3
             group by sbk.bank_name) c
     where c.bank_name is not null
     order by sumBalanceRate desc

---------------------------------------------------------------------
    
    select c.bank_name as bankName,
           nvl(c.sumBl / 10000, 0) as sumBalance,
           nvl((c.sumBl /
               (select case
                          when '' is null then
                           sum(bl.balance * r.price / 100)
                          when '' is not null then
                           sum(bl.balance)
                        end as sumBl
                   from (select *
                           from gtsa_account acc
                           left join gtsa_account_balanace bl
                             on acc.account_no = bl.account_number
                            and bl.savedate =
                                (select max(savedate)
                                   from gtsa_account_balanace blk
                                  where blk.account_number = acc.account_no)) bl
                   left join admp_standard_bank sbk
                     on bl.bank_no = sbk.bank_code
                   left join (select b.no, MEDIAN_PRICE price
                               from RMS_EXC_RATE a
                               join RMS_CURRENCY b
                                 on a.CY_ID = b.ID
                              where STATE = 2
                                AND IS_STOP = 0
                                and a.active_date =
                                    (select max(active_date)
                                       from rms_exc_rate t
                                      where t.cy_id = a.cy_id)) r
                     on bl.currency_code = r.no
                  where 1 = 1
                    and bl.account_location = '1'
                    and bl.connect_way = 3)) * 100,
               0) as sumBalanceRate,
           case
             when '1' is null then
              '所有区域'
             when '1' is not null then
              (select ar.area_name
                 from gtsa_area ar
                where ar.area_code = '1'
                  and rownum = 1)
           end as areaName
      from (select sbk.bank_name,
                   case
                     when '' is null then
                      sum(bl.balance * r.price / 100)
                     when '' is not null then
                      sum(bl.balance)
                   end as sumBl
              from gtsa_account acc
              left join gtsa_account_balanace bl
                on acc.account_no = bl.account_number
               and bl.savedate =
                   (select max(savedate)
                      from gtsa_account_balanace blk
                     where blk.account_number = acc.account_no)
              left join admp_standard_bank sbk
                on bl.bank_no = sbk.bank_code
              left join (select b.no, MEDIAN_PRICE price
                          from RMS_EXC_RATE a
                          join RMS_CURRENCY b
                            on a.CY_ID = b.ID
                         where STATE = 2
                           AND IS_STOP = 0
                           and a.active_date =
                               (select max(active_date)
                                  from rms_exc_rate t
                                 where t.cy_id = a.cy_id)) r
                on bl.currency_code = r.no
             where 1 = 1
               and acc.account_location in (select area_code from gtsa_area)
               and acc.account_location = '1'
               and acc.connect_way = 3
             group by sbk.bank_name) c
     where c.bank_name is not null
     order by sumBalanceRate desc 
---------------------------------
select count(*) from gtsa_account acc  	  left join gtsa_bank_info bk  	    on acc.bank_id = bk.bank_id and bk.bank_no = '02';


--------------------------------------------------


    
    select *
      from (select nvl((sum(b.balance) / 10000), 0) as BALANCETOTAL
              from um_currency umc
              left join (select *
                          from um_currency uc
                         inner join RMS_CURRENCY b
                            on b.no = uc.codeno
                         inner join RMS_EXC_RATE r
                            on r.cy_id = b.id
                         where 1 = 1
                           and r.state = 2
                           and r.is_stop = 0
                           and r.active_date =
                               (select max(active_date)
                                  from rms_exc_rate rt
                                 where rt.cy_id = r.cy_id)) u
                on u.codeno = umc.codeno
              left join (select *
                          from Gtsa_Account t
                          join gtsa_account_balanace gab
                            on t.account_id = gab.account_id
                          join GTSA_BANK_INFO bi
                            on t.bank_id = bi.bank_id
                          join admp_standard_bank asb
                            on asb.bank_code = bi.bank_no
                          left join clt_clt_info c
                            on t.cust_no = c.cltno
                         where 1 = 1
                           and gab.savedate =
                               (select max(bala.savedate)
                                  from gtsa_account_balanace bala
                                 where bala.account_id = t.account_id)) b
                on u.codeno = b.currency_code
             where 1 = 1
               and umc.isenable = 1
               and umc.codeno not in ('CNY')
             group by umc.codeno
             order by umc.codeno asc) c
    union all
    select *
      from (select nvl((sum(b.balance * 0.01 * u.MEDIAN_PRICE) / 10000), 0) as BALANCETOTAL
              from um_currency umc
              left join (select *
                          from um_currency uc
                         inner join RMS_CURRENCY b
                            on b.no = uc.codeno
                         inner join RMS_EXC_RATE r
                            on r.cy_id = b.id
                         where 1 = 1
                           and r.state = 2
                           and r.is_stop = 0
                           and r.active_date =
                               (select max(active_date)
                                  from rms_exc_rate rt
                                 where rt.cy_id = r.cy_id)) u
                on u.codeno = umc.codeno
              left join (select *
                          from Gtsa_Account t
                          join gtsa_account_balanace gab
                            on t.account_id = gab.account_id
                          join GTSA_BANK_INFO bi
                            on t.bank_id = bi.bank_id
                          join admp_standard_bank asb
                            on asb.bank_code = bi.bank_no
                          left join clt_clt_info c
                            on t.cust_no = c.cltno
                         where 1 = 1
                           and gab.savedate =
                               (select max(bala.savedate)
                                  from gtsa_account_balanace bala
                                 where bala.account_id = t.account_id)) b
                on u.codeno = b.currency_code
             where 1 = 1
               and umc.isenable = 1
               and umc.codeno not in ('CNY')) b
---------------------------

    
    select um.codename as codeName, um.codeno as codeNo, r.price as price
      from um_currency um
      left join (select b.no, MEDIAN_PRICE price
                   from RMS_EXC_RATE a
                   join RMS_CURRENCY b
                     on a.CY_ID = b.ID
                  where 1 = 1
                    and STATE = 2
                    and IS_STOP = 0
                    and a.active_date =
                        (select max(active_date)
                           from rms_exc_rate t
                          where t.cy_id = a.cy_id)) r
        on um.codeno = r.no
     where um.isenable = 1
       and r.price is null
       and um.codeno not in ('CNY');
       
       
       
       -------------
       
       select a.codeno mny, a.codename mnyname, a.codeorder
         from um_currency a
        where a.isenable = 1
        
        ----------
        
        select * from um_currency umc ;
          and a.codeno not in ('CNY')
        order by a.codeno asc 
----------


select   	a.codeno mny,   	a.codename mnyname,   	a.codeorder  from   	um_currency a  where   	a.isenable = 1 and  	a.codeno not in ('CNY')  order by a.codeno


-----


select   	a.codeno mny,   	a.codename mnyname,   	a.codeorder  from   	um_currency a  where   	a.isenable = 1 and  	a.codeno not in ('CNY')  order by a.codeno


