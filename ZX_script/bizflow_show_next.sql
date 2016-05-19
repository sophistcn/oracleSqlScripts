select * from bizprocright p order by p.rightid desc;
select * from bizprocessing p where p.prc_id = 4421;
select * from bizprocessing p where p.caseid = 2491;

select * from wf_master_user ;

select * from wfrole ;

select *
  from bizcase c
 where c.caseid =
       (select o.biz_case_id from gtsb_order o where o.order_id = 153);

select rt.uno, wr.rolename, clt.chinesename
  from bizprocright rt
  left join wfrole wr
    on rt.role = wr.roleid
  left join clt_clt_info clt
    on rt.unit = clt.cltno
 where rt.prc_id =
       (select max(p.prc_id)
          from bizprocessing p
         where p.caseid =
               (select o.biz_case_id from gtsb_order o where o.order_id = 151));
                            
                            
select * from bizprocright p where p.prc_id = 3124;

delete from bizhistory where caseid in (select caseid from bizcase c where c.fw_pid in(select b.fw_pid from biz_flow b where 1=1 and b.fw_key like '%GTSB%' ))
/
delete from bizprocessing where caseid in (select caseid from bizcase c where c.fw_pid in(select b.fw_pid from biz_flow b where 1=1 and b.fw_key like '%GTSB%'))
/
delete from bizcase where caseid in (select caseid from bizcase c where c.fw_pid in(select b.fw_pid from biz_flow b where 1=1 and b.fw_key like '%GTSB%'))
/

insert into BIZ_ACTION
  (ac_pid, at_pid, ac_class, ac_name, remark, al_key, appno)
  select seq_biz_action.nextval,
         1,
         'com.nstc.gtsb.bizflow.allocation.ClientRatifyIsOkAllocation',
         '控制本单位有权查看',
         '控制本单位有权查看',
         null,
         'GTSB'
    from dual
   where not exists (select *
            from BIZ_ACTION S
           WHERE S.APPNO = 'GTSB'
             and ac_class = 'com.nstc.gtsb.bizflow.allocation.ClientRatifyIsOkAllocation')
/




    
    select rt.uno          as "uno",
           wr.rolename     as "roleName",
           clt.chinesename as "cltName"
      from bizprocright rt
      left join wfrole wr
        on rt.role = wr.roleid
      left join clt_clt_info clt
        on rt.unit = clt.cltno
     where rt.prc_id =
           (select max(p.prc_id)
              from bizprocessing p
             where p.caseid = (select o.biz_case_id
                                 from gtsb_order o
                                where o.order_id = 153))
