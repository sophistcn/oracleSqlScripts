select * from ns_gs_settings ;
update ns_gs_settings t set t.param_value = 'http://192.168.7.76:9081/bp-server' where t.param_name = 'BP3_SERVER_URL';




   select
        g.bank_id as "bankId",
        g.bank_name as "bankName"   
    from
        gtsa_bank_info g   
    where
        1 = 1          
        and     g.country = 'CHN'        
        and     g.bank_no = '01'        
    order by
        g.bank_id desc  
;
select * from gtsa_bank_info;


select * from bp3_bank_account ;
