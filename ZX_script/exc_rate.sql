select umc.codename || ' ' || umc.codeno as "codeName",
       exc2.target_cur as "usdCur",
       exc2.exc_rate as "usdRate",
       'CNY' as "rmbCur",
       exc1.exc_rate as "rmbRate",
       exc1.eff_date as "effDate"
  from (select * from um_currency where isenable = 1) umc
  left join (select substr(rt.exc_type, 0, 3) as src_cur,
                    substr(rt.exc_type, 5, 8) as target_cur,
                    rt.eff_date,
                    rt.exc_rate
               from sap_exc_rate rt
              where rt.eff_date =
                    (select max(rt2.eff_date)
                       from sap_exc_rate rt2
                      where rt2.exc_type = rt.exc_type)) exc1
    on umc.codeno = exc1.src_cur
   and exc1.target_cur = 'RMB'
  left join (select substr(rt.exc_type, 0, 3) as src_cur,
                    substr(rt.exc_type, 5, 8) as target_cur,
                    rt.eff_date,
                    rt.exc_rate
               from sap_exc_rate rt
              where rt.eff_date =
                    (select max(rt2.eff_date)
                       from sap_exc_rate rt2
                      where rt2.exc_type = rt.exc_type)) exc2
    on umc.codeno = exc2.src_cur
   and exc2.target_cur = 'USD'
 where 1 = 1
   and exc2.src_cur is not null
   and exc1.src_cur is not null
;
select * from sap_exc_rate;

select t.eff_date      as "effDate",
       t.exc_type      as "excType",
       t.exc_rate      as "excRate",
       t.validate_from as "validateFrom"
  from sap_exc_rate t
 where 1=1
 and t.eff_date = '2016-1-13'
 order by substr(t.exc_type,0,3) desc;
 
 
 
 select t.eff_date      as "effDate",
		       t.exc_type      as "excType",
		       t.exc_rate      as "excRate",
		       t.validate_from as "validateFrom"
		  from sap_exc_rate t
		 where 1=1;
     
     select * 		  from sap_exc_rate t;
     select * from um_currency;
     
     
  select t.eff_date      as "effDate",
         t.exc_type      as "excType",
         t.exc_rate      as "excRate",
         t.validate_from as "validateFrom"
    from sap_exc_rate t
   where 1 = 1
  
     and substr(t.exc_type, 0, 3) in
         (select umc.codeno from um_currency umc where umc.isenable = 1)
   order by substr(t.exc_type, 0, 3) desc
;

select * from gtsa_account_balanace ;
