select seq_fcm_synthetical_cashset.nextval from dual;

select seq_fcm_synthetical_cashset_l.nextval as "logId" from dual;

-------------
select * from fcm_synthetical_cashset;
select * from fcm_synthetical_cashset_log;

INSERT INTO WFPAGE (PAGENO,APPNO,URL,PAGENAME,CAPTION,RSPMODE)
SELECT '1D78709C-DD86-7123-5EE5-9F68CF03D692','FCM','syntheticalCashSet.FCM.do','结售汇系统/系统设置/综合头寸配置','结售汇系统/系统设置/综合头寸配置',1 FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM WFPAGE W WHERE W.PAGENO='1D78709C-DD86-7123-5EE5-9F68CF03D692')
/

INSERT INTO WF_MENU_TREE (MENUID, CAPTION, PMID, ISLEAF, IN_NEW_WINDOW, PAGENO, DESCRIPTION, PATH, SORTNUM) SELECT 'FCM001001006', '综合头寸设置', 'FCM64322483', 1, 0, '1D78709C-DD86-7123-5EE5-9F68CF03D692', '综合头寸设置', '结售汇系统/系统设置/综合头寸设置', '001001006' FROM DUAL WHERE NOT EXISTS(SELECT 1 FROM WF_MENU_TREE WHERE MENUID='FCM001001006')
/

select * from WF_MENU_TREE t where t.menuid like 'FCM%';
select * from WF_MENU_TREE t where t.caption like '%牌价%';

--------
select * from gtsa_account_detail ;

---------
select * from fcm_flatrecord;

------------
 
 select CaId,
        sheetId,
        FeNo,
        RandomNo,
        ProjectType,
        State,
        TxDir,
        IsTrade,
        Purpose,
        Fee,
        SettleMode,
        ExchangeRate,
        FEMoney,
        CreateDate,
        PropertyId,
        ProxyCltNo,
        TxSourceDes,
        UpdateDate,
        ApplyDate,
        EndDate,
        Memo,
        IsError,
        ErrorMsg,
        ExecFlag,
        PayType,
        RMBAcntNo,
        (select distinct (c.name) from cntacnt c where c.no = a.RMBAcntNo) as RMBAcntName,
        (select distinct (c.kmh) from cntacnt c where c.no = a.RMBAcntNo) as RMBAcntKm,
        FEAcntNo,
        (select distinct (d.name) from cntacnt d where d.no = a.FEAcntNo) as FEAcntName,
        (select distinct (d.kmh) from cntacnt d where d.no = a.FEAcntNo) as FEAcntKm,
        (select distinct (c.clientId)
           from cntacnt c
          where c.no = a.RMBAcntNo) as RMBAcntCltNo,
        (select distinct (f.cltName)
           from cntacnt c
           join nsclient f
             on c.clientId = f.cltNo
          where c.no = a.RMBAcntNo) as RMBAcntCltName,
        (select distinct (d.clientId) from cntacnt d where d.no = a.FEAcntNo) as FEAcntCltNo,
        (select distinct (g.cltName)
           from cntacnt d
           join nsclient g
             on d.clientId = g.cltNo
          where d.no = a.FEAcntNo) as FEAcntCltName,
        (select distinct (c.bz) from cntacnt c where c.no = a.RMBAcntNo) as RMBAcntBz,
        (select distinct (d.bz) from cntacnt d where d.no = a.FEAcntNo) as FEAcntBz,
        (select distinct (c.brno) from cntacnt c where c.no = a.RMBAcntNo) as RMBAcntBrNo,
        (select distinct (d.brno) from cntacnt d where d.no = a.FEAcntNo) as FEAcntBrNo,
        a.CltNo,
        (select distinct (cltName) from nsclient b where b.cltNo = a.cltNo) as CltName,
        (select distinct (cltName)
           from nsclient b
          where b.cltNo = a.ProxyCltNo) as ProxyCltName,
        (select distinct (d.kmh) from cntacnt d where d.no = a.FEAcntNo) as kmh,
        b.Mny,
        b.MnyName,
        b.MnyAffix,
        b.MnyStyle,
        e.Inputter,
        e.Checker,
        e.Approver,
        a.FeeAmt,
        a.FeeRate,
        a.TsId,
        a.SubState,
        a.creditid,
        a.subCaid,
        a.deliveryRate,
        a.reason,
        a.trademodecode,
        a.otherMemo,
        a.biz_type
   from FCM_Spot_TXApply a
   LEFT OUTER JOIN AMNY b
     ON a.FEBz = b.Mny
   LEFT JOIN (select acMap.Rmbacnt,
                     acMap.Fcacnt,
                     acMap.Cltno,
                     max(acMap.Inputter) Inputter,
                     max(acMap.Checker) Checker,
                     max(acMap.Approver) Approver
                from FCM_AcntMapping acMap
               group by (acMap.Rmbacnt, acMap.Fcacnt, acMap.Cltno)) e
     ON a.RMBAcntNo = e.RMBAcnt
    AND a.FEAcntNo = e.FCAcnt
    AND a.CltNo = e.CltNo
   LEFT JOIN nsclient f
     ON a.CltNo = f.cltNo
  WHERE 1 = 1
    and State = '40' or State = '-10'
     -- and tsid in (select tsid from fcm_spot_txsheet t)
    and f.cltno = '0010103'
    and a.CltNo like '0010103'
  order by a.CaId desc
--------------
select * from FCM_Spot_TXApply;
-----------------------
select * from fcm_sheetflat_map;
-----------------------
select * from fcm_flatrecord;

------------------------------
select * from fcm_synthetical_cashset_log;


-------------------------------------
   
   select t1.detail_id         as "detailId",
          t1.account_number    as "receiveAccNo",
          t1.account_name      as "receiveAccName",
          t2.BANK_BRANCH_NAME  as "receiveBranchName",
          t1.bank_no           as "bankNo",
          t1.op_account_number as "payAccNo",
          t1.op_account_name   as "payAccName",
          t3.BANK_BRANCH_NAME  as "payBranchName",
          t1.detail_date       as "detailDate",
          t1.amount            as "amount",
          t1.currency_code     as "currencyNo",
          t1.direction         as "direction"
     from gtsa_account_detail t1
     join vw_gtsb_bank_account t2
       on t1.account_number = t2.account_no
      and t1.currency_code = t2.CURRENCY_NO
     join vw_gtsb_bank_account t3
       on t1.op_account_number = t3.account_no
      and t1.currency_code = t3.CURRENCY_NO
     join gtsb_account_group t4
       on t2.BANK_ACCOUNT_ID = t4.main_account_id
      and t4.account_group_level is not null
     join gtsb_account t5
       on t4.account_group_id = t5.account_group_id
      and t5.bcm_account_id = t3.BANK_ACCOUNT_ID
    where t2.DOMESTIC = 1
      and t2.ACCOUNT_TYPE = 5
      and t3.ACCOUNT_TYPE in (2, 3)
      and t3.DOMESTIC = 1
      and t1.direction = 2
      and not exists (select 1
             from gtsb_account_detail ad
            where ad.source_id = t1.detail_id)
      and t1.detail_date = '2016-03-02'
------------------------------
    
    select *
      from vw_fer_account t
     where 1 = 1
       and t.cur_code = 'EUR'
       and t.account_type_id = '4'
       and t.CUST_NO = '001'
       and t.bank_no = '01'
----------------------------------------------------------------

select t1.account_id,
       t1.bank_id,
       t1.account_type_id,
       t1.connect_way,
       t1.account_no,
       t1.cust_no,
       t1.cur_code,
       t1.account_name,
       t1.inner_account_no,
       t1.account_state,
       t1.quota,
       t2.is_domestic,
       t2.bank_no,
       t2.bank_swift_no,
       t2.bank_region,
       t2.bank_address,
       s.bank_name,
       case
         when t2.is_domestic = 1 then
          (select t3.opbankname
             from cnaps t3
            where t3.cnapsno = t2.open_bank_no)
         when t2.is_domestic = 2 then
          t2.bank_name
       end as openBankName,
       t2.remarks
  from (select a.*, b.balance, b.available_balance quota
          from gtsa_account a
          left join (SELECT *
                      from gtsa_account_balanace
                     where savedate in (select MAX(savedate) id
                                          from gtsa_account_balanace b1
                                         GROUP BY B1.ACCOUNT_ID)) b
            on a.account_id = b.account_id) t1
  join gtsa_bank_info t2
    on t1.bank_id = t2.bank_id
  join admp_standard_bank s
    on t2.bank_no = s.bank_code
 where t1.account_state = 1;


select a.*, b.balance, b.available_balance quota
  from gtsa_account a
  left join (SELECT *
               from gtsa_account_balanace
              where savedate in (select MAX(savedate) id
                                   from gtsa_account_balanace b1
                                  GROUP BY B1.ACCOUNT_ID)) b
    on a.account_id = b.account_id ;
    
    
    
    SELECT *
      from gtsa_account_balanace bl
     where savedate = (select MAX(savedate) id
                          from gtsa_account_balanace bl2
                       where  bl.account_number = bl2.account_number) ;
                       
                       
                       create or replace view VW_GTSA_ACCOUNT_BALANCE as
  select t2.*
    from (select t1.*,
                 ROW_NUMBER() over(partition by t1.account_number order by t1.savedate desc) balance_row_number
            from gtsa_account_balanace t1) t2
   where t2.balance_row_number = 1
----------------


select * from fcm_spot_txsheet;

-----------------------------------------------


select * from fcm_spot_txapply t ;

------------------------------------------------

select * from vw_fer_account t where 1=1         and             t.cur_code = 'EUR'   
   	select * from vw_fer_account t where 1=1
    
--------

create or replace view vw_fer_account as
select t1.account_id,
       t1.bank_id,
       t1.account_type_id,
       typ.account_type_name,
       t1.account_no,
       t1.cust_no,
       clt.cltname,
       t1.cur_code,
       cur.codename,
       t1.account_name,
       t1.inner_account_no,
       t1.account_state,
       t1.quota,
       t2.is_domestic,
       t2.bank_no,
       t2.bank_swift_no,
       t2.bank_region,
       t2.bank_address,
       s.bank_name,
       t1.connect_way,
       case when t2.is_domestic = 1 then (select t3.opbankname from cnaps t3 where t3.cnapsno = t2.bank_name)
            when t2.is_domestic = 2 then t2.bank_name
        end as openBankName,
       t2.remarks
  from (select a.*,b.balance,b.available_balance quota from gtsa_account a left join (SELECT * from gtsa_account_balanace ba where ba.savedate in (select MAX(savedate) id from gtsa_account_balanace b1 where ba.account_id = b1.account_id)) b on a.account_id = b.account_id) t1
  join gtsa_bank_info t2 on t1.bank_id = t2.bank_id
  join admp_standard_bank s on t2.bank_no = s.bank_code
  join nsclient clt on t1.cust_no = clt.cltno
  join um_currency cur on cur.codeno = t1.cur_code
  join gtsa_account_type typ on typ.account_type_id = t1.account_type_id
  where t1.account_state = 1
/
-----
