select * from sap_exc_rate for update ;


select * from sap_exc_rate t where to_date(t.eff_date,'yyyy-mm-dd') < sysdate;

