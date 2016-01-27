select * from gtsc_account_node for update ;

select * from gtsa_account ;
select * from gtsc_job_set t where t.flow_state in (2,3);
select * from gtsc_time_period;

select * from gtsc_time_period t where t.period_id = 781 for update;

update gtsc_fund_trans_path t set t.period_id = 1 where t.period_id = 781;

select to_char(systimestamp + 3/60/24,'HH24:MI') from dual;

update gtsc_time_period t set t.time = to_char(systimestamp + 1/60/24,'HH24:MI') where t.period_id = 1;
commit;
select * from gtsc_time_period t where t.period_id = 1;


select * from gtsc_fund_trans_path for update;

update gtsc_job_set t set t.flow_state = 5 where t.flow_state = 3;

select * from gtsc_job_set t order by t.create_date desc for update;

update gtsc_job_set t set t.flow_state = 3 , t.execute_state = 3 where t.job_set_id > 500;

select * from gtsa_account acc where acc.account_no = '0000000000000001';
select * from gtsa_account acc where acc.account_no = '1000000000000000';
select * from gtsa_account acc where acc.account_no = '11122222';
select * from gtsa_account acc where acc.account_no = '1112223'; 
select * from fer_remitter;
select * from gtsa_account acc where acc.account_no = '0000000000000001'; 


update gtsa_account t set t.inner_account_no = '02' where t.account_no = '1112223';
update gtsa_account t set t.inner_account_no = '00101' where t.account_no = '11122222'; 
update gtsa_account t set t.inner_account_no = '02' where t.account_no = '23'; 

select * from ns_gs_settings for update;

update ns_gs_settings t set t.param_value = 'http://192.168.0.142:9081/bp-server' where t.param_name = 'BP3_SERVER_URL';

select * from vw_cntacnt ;

select * from gtsc_tx t  order by t.create_date desc;
select * from gtsc_job_set t order by t.create_date desc;
update gtsc_tx t set t.tx_state = 4 where t.job_set_id = 1389;

select * from bp3_bank_account_balance;
select count(*) 	  from gtsc_tx t 	 where t.tx_state = 4 	   and t.job_set_id = 1389;


update gtsa_account acc set acc.connect_way = 2 where acc.account_no = 's5';
update gtsa_account acc set acc.connect_way = 3 where acc.account_no = '11122222';
update gtsa_account acc set acc.connect_way = 3 where acc.account_no = '23';
update gtsa_account acc set acc.connect_way = 2 where acc.account_no = '1112223';


-- where t.job_set_id = #jobSetId#
;
delete from wfpage w where w.appno = 'GTSC-Web';
select * from wfpage w where w.appno like 'BPC%';
select * from wfpage w where w.appno like 'GTSC%';
select * from wf_menu_tree t where t.menuid like 'GTSC%';
select * from wf_menu_tree t where t.menuid like 'BPC%';
select * from smb_page t  where t.pageid like 'GTSC%';
select * from ns_gs_settings t where t.param_name like 'BP%';


select * from gtsa_account_balanace bl for update;-- where bl.account_number = 's5' for update ;


select * from gtsc_account_node t where t.account_no = 's5';
select * from gtsc_account_node t where t.node_id = 227;


select * from gtsc_account_node t where t.tree_id = 7 ;

select * from gtsa_account t where t.account_no = '622848000001';

select * from gtsa_acc_tx_map txm where txm.account_id = 169;



select  t.account_no from gtsc_account_node t where t.tree_id = 7 ;

select * from um_form;

select t.job_set_id   as "jobSetId",
       t.job_set_no   as "jobSetNo",
       t.tx_type_id   as "txTypeId",
       t.total_number as "totalNumber",
       t.currency_no  as "currencyNo",
       t.total_amount as "totalAmount",
       t.create_date  as "createDate",
       um.inputor     as "inputor"
  from gtsc_job_set t
  left join um_form um
    on t.fmid = um.fmid
    t.flow_state = 
    where t.flow_state = 1;
    
    select seq_gtsc_business_log.nextval into logId from dual;
    
    select * from gtsc_auth_code;
    update gtsc_auth_code t set t.user_no = '001_2';
    
    update gtsa_account acc set acc.connect_way = 1 where acc.account_no = '11122222';
select * from gtsc_payment_register t order by t.confirm_date desc;

    
update gtsc_job_set t set t.execute_state = 9999;
    
update gtsc_tx t set t.tx_state = 9999;
update gtsc_tx t set t.settle_mark = 9999;

update gtsc_job_set t set t.flow_state = 999;

delete from bizhistory where caseid in (select caseid from bizcase c where c.fw_pid in(select b.fw_pid from biz_flow b where 1=1 and b.fw_key like '%GTSC%' ))
/
delete from bizprocessing where caseid in (select caseid from bizcase c where c.fw_pid in(select b.fw_pid from biz_flow b where 1=1 and b.fw_key like '%GTSC%'))
/
delete from bizcase where caseid in (select caseid from bizcase c where c.fw_pid in(select b.fw_pid from biz_flow b where 1=1 and b.fw_key like '%GTSC%'))
/

select * from gtsa_account_balanace for update;

select count(0) 	  from gtsc_job_set t 	  inner join um_form um 	    on t.fmid = um.fmid 	  where t.flow_state in (1,4)/*驳回，暂存*/; 



    select
        *
    from
        ( select
            t.job_set_id   as "jobSetId",
            t.job_set_no   as "jobSetNo",
            t.tx_type_id   as "txTypeId",
            t.total_number as "totalNumber",
            t.currency_no  as "currencyNo",
            t.total_amount as "totalAmount",
            t.create_date  as "createDate",
            t.flow_state   as "flowState",
            t.tree_id      as "treeId",
            t.biz_case_id  as "bizCaseId",
            um.inputor     as "inputor"    
        from
            gtsc_job_set t    
        left join
            um_form um      
                on t.fmid = um.fmid    
        where
            t.flow_state in (
                1,4
            )/*驳回，暂存*/ ) c where rownum > 10
    where
        rownum = 10
         
;

select * from gtsc_tx t left join gtsc_job_set st on t.job_set_id =  st.job_set_id where st.flow_state = 3;



--删除工作流数据
delete from bizhistory where caseid in (select caseid from bizcase c where c.fw_pid in(select b.fw_pid from biz_flow b where 1=1 and b.fw_key like '%GTSC%' ))
/
delete from bizprocessing where caseid in (select caseid from bizcase c where c.fw_pid in(select b.fw_pid from biz_flow b where 1=1 and b.fw_key like '%GTSC%'))
/
delete from bizcase where caseid in (select caseid from bizcase c where c.fw_pid in(select b.fw_pid from biz_flow b where 1=1 and b.fw_key like '%GTSC%'))
/



select * from gtsc_tx tx where tx.tx_state = 3 ;

select * from gtsc_payment_register;

select seq_gtsc_payment_register.nextval from dual;


select * from gtsc_tx t order by t.create_date desc;


select *
  from gtsc_job_set t
 where t.job_set_no like 'ZDSS%'
   and t.flow_state = 1
   and rownum = 1;
   
   select * from gtsc_account_tree t ; 
update gtsc_account_tree t set t.effect_state = 1;
   
   select t.tree_id as "value", t.tree_code || ' ' || t.tree_name as "name"
     from gtsc_account_tree t
    where t.act_state = 1
      and t.effect_state = 1;
      
    
    select b.*
      from (select e.*, rownum r
              from (select *
                      from gtsc_job_set t
                     where t.execute_state in (2, 3) /*执行中，执行完成*/
                    ) e) b
     where r <= 10
       and r > 0;
       select * from gtsc_job_set ;
       
       
select * from user_constraints t where t.CONSTRAINT_NAME = 'FK_BP3_FRONT_STATUS_REF_NODE';

select * from user_constraints t where t.CONSTRAINT_NAME = 'PK_BP3_FRONT_NODE';
select * from BP3_FRONT_NODE;
select * from ns_gs_settings for update;

select * from bp3_bank_account;

select * from bp3_bank_order;

select * from bp3_bank_currency_mapping;

select * from wf_master_user;

select count(0)
  from (select (select nd.node_level
                  from gtsc_account_node nd
                 where nd.account_no = t.bank_account_no
                   and nd.tree_id = tr.tree_id) as n1,
               (select nd.node_level
                  from gtsc_account_node nd
                 where nd.account_no = t.op_bank_account_no
                   and nd.tree_id = tr.tree_id) as n2
          from gtsc_tx t
         inner join gtsc_job_set st
            on t.job_set_id = st.job_set_id
         inner join gtsc_account_tree tr
            on st.tree_id = tr.tree_id
         where t.tx_id = 272
           and t.tx_type_id = 4) b
 where b.n1 = 2
   and b.n2 = 2;

 left join gtsc_job_set st on t.job_set_id = st.job_set_id   and t.tx_type_id = 4 ;

select * from biz_action b where b.appno like 'GTSC%';


    
  select t.account_no       as "accountNo",
         t.account_name     as "accountName",
         t.ACCOUNT_TYPE     as "accountTypeId",
         t.BANK_CODE        as "bankNo",
         t.BANK_BRANCH_NAME as "bankBranchName",
         t.CUST_NAME        as "custName",
         t.NATURE           as "nature",
         t.account_location as "accountLocation",
         t.connect_way      as "connectWay"
    from VW_GTSC_BANK_ACCOUNT t
   where 1 = 1
     and /* 取存在资金归集交易行为的帐号    t.BANK_ACCOUNT_ID in (
                    select
                        t2.account_id 
                    from
                        gtsa_acc_tx_map t2 
                    where
                        t2.tx_code = 5
                ) 
                and     */ /* 保证同一帐号在一棵树上只出现一次*/
         t.account_no not in
         (select t1.account_no
            from gtsc_account_node t1
           where t1.tree_id = 21
             and t1.parent_node_id is not null)
     and t.currency_no = 'EUR';
     
     select * from VW_GTSC_BANK_ACCOUNT;
select * from bp3_server_callback_id_seq;

select * from gtsc_business_log t where t.buss_id = 114 order by t.operation_date asc;


insert into bp3_server_callback (CALLBACK_ID, APPNO, TRANS_CODE, CALLURL, SERVERURL)
values (bp3_server_callback_id_seq.nextval, 'GTSA', 'QR0001', null, 'http://192.168.7.76:9999/AppService/Gtsa_Balance.service');

insert into bp3_server_callback (CALLBACK_ID, APPNO, TRANS_CODE, CALLURL, SERVERURL)
values (bp3_server_callback_id_seq.nextval, 'GTSA', 'QR0002', null, 'http://192.168.7.76:9999/AppService/Gtsa_Detail.service');

insert into bp3_server_callback (CALLBACK_ID, APPNO, TRANS_CODE, CALLURL, SERVERURL)
values (bp3_server_callback_id_seq.nextval, 'GTSE', 'SX0001', null, 'http://192.168.7.76:9999/AppService/GtseBp3.service');

insert into bp3_server_callback (CALLBACK_ID, APPNO, TRANS_CODE, CALLURL, SERVERURL)
values (bp3_server_callback_id_seq.nextval, 'FER', 'SX0001', null, 'http://192.168.7.76:9999/AppService/FER4BP.service');

insert into bp3_server_callback (CALLBACK_ID, APPNO, TRANS_CODE, CALLURL, SERVERURL)
values (bp3_server_callback_id_seq.nextval, 'GTSC', 'SX0001', null, 'http://192.168.7.76:9999/AppService/GTSC4BP.service');

insert into bp3_server_callback (CALLBACK_ID, APPNO, TRANS_CODE, CALLURL, SERVERURL)
values (bp3_server_callback_id_seq.nextval, 'GTSB', 'SX0001', null, 'http://192.168.7.76:9999/AppService/GTSB4BP.service');




    
    select acc.account_no as "accountNo",
           acc.account_name as "accountName",
           acc.account_type_id as "accountTypeId",
           bk.bank_no as "bankNo",
           clt.chinesename as "custName",
           bk.bank_no as "bankNo",
           '' as "chargeAccountNo",
           nvl(bl.available_balance, 0) as "availableBalance",
           bl.savedate as "saveDate",
           nd.node_level as "nodeLevel",
           0 as "minExecuteAmount",
           'enabled' as "enableFlag"
      from gtsc_account_node nd
      join gtsa_account acc /*
        join
            只取node和账户都有的集合*/
        on nd.account_no = acc.account_no
      left join gtsa_bank_info bk
        on acc.bank_id = bk.bank_id
      left join clt_clt_info clt
        on acc.cust_no = clt.cltno
      left join (select *
                   from gtsa_account_balanace bl2
                  where bl2.savedate =
                        (select max(bl3.savedate)
                           from gtsa_account_balanace bl3
                          where bl3.account_number = bl2.account_number)) bl
        on acc.account_no = bl.account_number
     where nd.tree_id = 406
       and nd.account_no != '112'
     start with nd.node_id = 571
    connect by prior nd.parent_node_id = nd.node_id
    union all
    select acc.account_no as "accountNo",
           acc.account_name as "accountName",
           acc.account_type_id as "accountTypeId",
           bk.bank_no as "bankNo",
           clt.chinesename as "custName",
           bk.bank_no as "bankNo",
           '' as "chargeAccountNo",
           nvl(bl.available_balance, 0) as "availableBalance",
           bl.savedate as "saveDate",
           nd.node_level as "nodeLevel",
           0 as "minExecuteAmount",
           'enabled' as "enableFlag"
      from gtsc_account_node nd
      join gtsa_account acc /*
            join
                只取node和账户都有的集合*/
        on nd.account_no = acc.account_no
      left join gtsa_bank_info bk
        on acc.bank_id = bk.bank_id
      left join clt_clt_info clt
        on acc.cust_no = clt.cltno
      left join (select *
                   from gtsa_account_balanace bl2
                  where bl2.savedate =
                        (select max(bl3.savedate)
                           from gtsa_account_balanace bl3
                          where bl3.account_number = bl2.account_number)) bl
        on acc.account_no = bl.account_number
     where nd.tree_id = 406
       and nd.account_no != '112'
       and nd.node_no like '000001001001' || '%'
