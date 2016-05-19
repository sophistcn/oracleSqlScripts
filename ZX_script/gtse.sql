select * from gtse_tx t;

select u.uno as "value", u.uname as "name" from wf_master_user u ;



select * from gtsa_account ;

update gtsa_account t set t.inner_account_no = '2012010103002' where t.account_no like '%wzp70332%';


update gtsa_account t set t.inner_account_no = '2012010103001' where t.account_no like '%wzp76641%';


select t.inputer,t.fmid from gtse_tx t ;

select * from um_form um where um.fm_cls = 'GTSE_FM001'; -- where um.fmid = 1950;

select * from wf_master_user;


 select
        v.NO       as "innerAccountNo",
        v.NAME     as "innerAccountName",
        v.CLIENTID as "custNo",
        v.CLTNAME  as "custName",
        v.KMH      as "subjectNo",
        v.bz       as "currencyNo"        
    from
        VW_CntAcnt v       
    where
        v.state = 0 /*0：正常，1：冻结，2：封存，3：清户*/          
        and     v.clientid = '01'      
        and     v.bz = 'EUR'   ;
        
        
