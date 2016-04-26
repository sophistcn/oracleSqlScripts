
/*160426-150148.716 |http-5001-6| ID=30581597,MD=statement,ET=7ms*/
    
    select wmu.userid,
           wmu.uno as userno,
           wmu.uname as userName,
           wmu.ukind,
           wmu.utype as userType,
           case
             when wmu.brno is null then
              cci.brno
             else
              wmu.brno
           end as branchNo,
           wmu.deptid,
           wmu.pwdbs as pswdEncrypt,
           wmu.pwdcs,
           wmu.begintime,
           wmu.endtime,
           wmu.isusable,
           wmu.active,
           wmu.firstenter,
           wmu.action,
           wmu.action_dtl as actionDtl,
           wmu.auth_mode as authMode,
           wmu.dn as certDn,
           wmu.fingerprint,
           wmu.encryptinfo,
           wmu.allowip,
           wmu.failcount,
           wmu.locktime,
           wmu.unlock_time as unlockTime,
           wmu.lastsucctime,
           wmu.last_ip_address as lastIpAddress,
           wmu.LASTPWDMODTIME as lastChangePwd,
           wmu.remark,
           wmu.deleted,
           cci.chinesename as memberName,
           cci.treeno as memberTreeNo,
           cci.cltno as memberNo,
           nb.brname as branchname,
           cci.id as memberId
      from wf_master_user wmu
      left join clt_clt_info cci
        on wmu.CLTNO = cci.CLTNO
      left join nsbranch nb
        on case
             when wmu.brno is null then
              cci.brno
             else
              wmu.brno
           end = nb.brno
     where wmu.deleted = 0
       and wmu.uno = '01'

/*160426-150148.724 |http-5001-6| ID=30581597,MD=statement,ET=5ms*/

    select
        wur.userid,
        wr.roleid,
        wr.roleno,
        wr.rolename   
    from
        wfuserroles wur   
    join
        wfrole wr     
            on wur.roleid = wr.roleid  
    where
        wr.deleted = 0    
        and wr.isusable = 1    
        and wur.isusable = 1    
        and wur.userid = '24' 

/*160426-150148.731 |http-5001-6| ID=30581597,MD=statement,ET=6ms*/

    select
        wsp.PKID     as stId,
        FLAGOV       as globalFlag,
        FAILCOUNTSET as failCountSet,
        PWDCYCLE     as pwdCycle,
        NOTLOGINDAY,
        IPBINDFLAG   as ipBlindFlag,
        PWDLONGS     as minPwdLength,
        PWDLONGE     as maxPwdLength,
        UPWDDTIMES   as pwdTipDays,
        FREEZEDAYS,
        ISENFORCEPWD as isEnforcePwd,
        ITIALPSWD,
        ALIKEPSWD    as pwdNoRepeatTimes,
        NOTETIME,
        UNLOCKDELAY  
    from
        WF_SAFE_POLICY wsp  
    join
        WFUSER_SAFEPOLICY ws    
            on wsp.pkid = ws.ptid 
    where
        wsp.isusable = 1   
        and ws.isusable = 1   
        and ws.userid = '24' 

/*160426-150148.738 |http-5001-6| ID=30581597,MD=statement,ET=5ms*/

    update
        wf_master_user   
    set
        action          = '2',
        action_dtl      = '0',
        failcount       = '0',
        locktime        = '',
        lastsucctime    = '2016-04-26 15:01:48.733',
        last_ip_address = '192.168.7.76' 
    where
        userId = '24' 

/*160426-150148.745 |http-5001-6| ID=30581597,MD=statement,ET=6ms*/

    select
        case 
            when wmu.brno is null then cci.brno 
            else wmu.brno 
        end   as BRANCHNO,
        cci.chinesename     as MEMBERNAME,
        cci.treeno          as MEMBERTREENO,
        nb.brname           as BRANCHNAME   
    from
        wf_master_user wmu  
    left join
        clt_clt_info cci    
            on wmu.CLTNO = cci.CLTNO  
    left join
        nsbranch nb    
            on case 
                when wmu.brno is null then cci.brno 
                else wmu.brno 
            end = nb.brno 
    where
        wmu.deleted = 0 
        and wmu.uno='01'

/*160426-150148.829 |http-5001-4| ID=14492623,MD=statement,ET=6ms*/

    select
        wmu.userid,
        wmu.uno       as userno,
        wmu.uname     as userName,
        wmu.ukind,
        wmu.utype   as userType,
        case 
            when wmu.brno is null then cci.brno 
            else wmu.brno 
        end   as branchNo,
        wmu.deptid,
        wmu.pwdbs       as pswdEncrypt,
        wmu.pwdcs,
        wmu.begintime,
        wmu.endtime,
        wmu.isusable,
        wmu.active,
        wmu.firstenter,
        wmu.action,
        wmu.action_dtl      as actionDtl,
        wmu.auth_mode       as authMode,
        wmu.dn              as certDn,
        wmu.fingerprint,
        wmu.encryptinfo,
        wmu.allowip,
        wmu.failcount,
        wmu.locktime,
        wmu.unlock_time     as unlockTime,
        wmu.lastsucctime,
        wmu.last_ip_address as lastIpAddress,
        wmu.LASTPWDMODTIME as lastChangePwd,
        wmu.remark,
        wmu.deleted,
        cci.chinesename     as memberName,
        cci.treeno          as memberTreeNo,
        cci.cltno           as memberNo,
        nb.brname           as branchname,
        cci.id           as memberId  
    from
        wf_master_user wmu  
    left join
        clt_clt_info cci    
            on wmu.CLTNO = cci.CLTNO  
    left join
        nsbranch nb    
            on case 
                when wmu.brno is null then cci.brno 
                else wmu.brno 
            end = nb.brno 
    where
        wmu.deleted = 0  
        and wmu.uno = '01' 

/*160426-150148.836 |http-5001-6| ID=30581597,MD=statement,ET=90ms*/

select * from table(QRY_USER_RESOURCES('24'))

/*160426-150148.836 |http-5001-4| ID=14492623,MD=statement,ET=5ms*/

    select
        wur.userid,
        wr.roleid,
        wr.roleno,
        wr.rolename   
    from
        wfuserroles wur   
    join
        wfrole wr     
            on wur.roleid = wr.roleid  
    where
        wr.deleted = 0    
        and wr.isusable = 1    
        and wur.isusable = 1    
        and wur.userid = '24' 

/*160426-150148.842 |http-5001-4| ID=14492623,MD=statement,ET=5ms*/

    select
        wsp.PKID     as stId,
        FLAGOV       as globalFlag,
        FAILCOUNTSET as failCountSet,
        PWDCYCLE     as pwdCycle,
        NOTLOGINDAY,
        IPBINDFLAG   as ipBlindFlag,
        PWDLONGS     as minPwdLength,
        PWDLONGE     as maxPwdLength,
        UPWDDTIMES   as pwdTipDays,
        FREEZEDAYS,
        ISENFORCEPWD as isEnforcePwd,
        ITIALPSWD,
        ALIKEPSWD    as pwdNoRepeatTimes,
        NOTETIME,
        UNLOCKDELAY  
    from
        WF_SAFE_POLICY wsp  
    join
        WFUSER_SAFEPOLICY ws    
            on wsp.pkid = ws.ptid 
    where
        wsp.isusable = 1   
        and ws.isusable = 1   
        and ws.userid = '24' 

/*160426-150149.434 |http-5001-6| ID=30581597,MD=statement,ET=6ms*/

insert into WFACCESSLOG(USERID, UNO, USERNAME, LOGMSG,TIMETAG,menuid) values ('24','01','财司经办员','登录','2016-04-26 15:01:49.427','')

/*160426-150149.443 |http-5001-6| ID=30581597,MD=statement,ET=7ms*/

insert into wf_login_log  (userid, ipaddress, logintime, failreason, issuccess)values  ('24', '192.168.7.76', '2016-04-26 15:01:48.725', '', '1')

/*160426-150149.448 |http-5001-4| ID=14492623,MD=statement,ET=605ms*/

    update
        wf_master_user   
    set
        action          = '2',
        action_dtl      = '0',
        failcount       = '0',
        locktime        = '',
        lastsucctime    = '2016-04-26 15:01:48.843',
        last_ip_address = '192.168.7.76' 
    where
        userId = '24' 

/*160426-150149.456 |http-5001-4| ID=14492623,MD=statement,ET=6ms*/

    select
        case 
            when wmu.brno is null then cci.brno 
            else wmu.brno 
        end   as BRANCHNO,
        cci.chinesename     as MEMBERNAME,
        cci.treeno          as MEMBERTREENO,
        nb.brname           as BRANCHNAME   
    from
        wf_master_user wmu  
    left join
        clt_clt_info cci    
            on wmu.CLTNO = cci.CLTNO  
    left join
        nsbranch nb    
            on case 
                when wmu.brno is null then cci.brno 
                else wmu.brno 
            end = nb.brno 
    where
        wmu.deleted = 0 
        and wmu.uno='01'

/*160426-150149.520 |http-5001-4| ID=14492623,MD=statement,ET=62ms*/

select * from table(QRY_USER_RESOURCES('24'))

/*160426-150149.896 |http-5001-2| ID=30581597,MD=statement,ET=111ms*/

select * from table(QRY_USER_RESOURCES('24'))

/*160426-150149.903 |http-5001-7| ID=3001888,MD=statement,ET=115ms*/

select * from table(QRY_USER_RESOURCES('24'))

/*160426-150150.134 |http-5001-4| ID=14492623,MD=statement,ET=6ms*/

insert into WFACCESSLOG(USERID, UNO, USERNAME, LOGMSG,TIMETAG,menuid) values ('24','01','财司经办员','登录','2016-04-26 15:01:50.127','')

/*160426-150150.146 |http-5001-4| ID=14492623,MD=statement,ET=12ms*/

insert into wf_login_log  (userid, ipaddress, logintime, failreason, issuccess)values  ('24', '192.168.7.76', '2016-04-26 15:01:48.837', '', '1')

/*160426-150150.496 |http-5001-2| ID=30581597,MD=statement,ET=24ms*/

    select wmt.menuid,
           wmt.caption as name,
           wmt.pageno,
           nvl(wmco.pmid, wmt.pmid) as pid,
           wmt.isleaf as leaf,
           nvl(wmco.ordernum, wmt.sortnum) as orderNum,
           wmt.PATH as PATH,
           wp.appno as appno,
           wp.ISSHOWSTATUS as SHOWSTATUS
      from wf_menu_tree wmt
      left join (select * from WF_MENU_CUSTOM_ORDER where userid = '24') wmco
        on wmt.menuid = wmco.menuid
      left join wfpage wp
        on wmt.pageno = wp.pageno
     where (wp.url is null or wp.url <> 'cs')
       and (wp.isusable is null or wp.isusable = 1)
       and wmt.ishidden = 'N'
     order by wmt.SORTNUM

/*160426-150154.598 |http-5001-5| ID=3001888,MD=statement,ET=6ms*/

select count(1)  from wf_notice_receive  where 1=1  and receivetime >= '2016-04-01 00:00:00.0'  and state = '0'  and USERID = '24'

/*160426-150154.605 |http-5001-5| ID=3001888,MD=statement,ET=6ms*/

    SELECT
        *  
    from
        (select
            a.*,
            rownum as RNUM          
        from
            (select
                a.rid         as rid,
                a.userid      as userid,
                a.nid      as nid,
                a.title       as title,
                a.receivetime as receiveTime,
                a.state       as state,
                c.uname       as senderName                  
            from
                wf_notice_receive a 
            inner join
                wf_notice b 
                    on a.nid=b.nid                  
            left join
                wf_master_user c                    
                    on c.userid = b.senderid                 
            where
                a.type = 0 
                and a.state = '0'  
                and a.receivetime >= '2016-04-01 00:00:00.0'                    
                and a.userId = '24'                 
            order by
                a.receivetime DESC) a         
        where
            rownum <= '10'
        ) j  
    where
        RNUM > '0'

/*160426-150154.676 |http-5001-7| ID=30581597,MD=statement,ET=90ms*/

    select
        wr.id        as rssId,
        wr.appno     as appno,
        wr.panel_url as panelUrl,
        wr.title     as title,
        wr.more_url  as moreUrl,
        c.isshowstatus  as  showStatus  
    from
        wf_rss wr  
    join
        table(QRY_USER_RESOURCES('24')) b    
            on wr.more_url = b.pageno 
    left join
        wfpage c 
            on wr.more_url=c.pageno 
            and wr.appno=c.appno 
    order by
        wr.id

/*160426-150154.783 |http-5001-5| ID=3001888,MD=statement,ET=56ms*/

select w.uno,w.uno_list,w.pid,w.menuCount  from wf_personalize_us w where w.uno = '01' and rownum=1

/*160426-150154.819 |http-5001-7| ID=30581597,MD=statement,ET=103ms*/

    select
        wr.id        as rssId,
        wr.appno     as appno,
        wr.panel_url as panelUrl,
        wr.title     as title,
        wr.more_url  as moreUrl,
        c.isshowstatus  as  showStatus  
    from
        wf_rss wr  
    join
        table(QRY_USER_RESOURCES('24')) b    
            on wr.more_url = b.pageno 
    left join
        wfpage c 
            on wr.more_url=c.pageno 
            and wr.appno=c.appno 
    order by
        wr.id
;
6183AD9A-1B41-9727-F060-3998106D16AB

B71788E8-B38D-4FC6-F604-76B6CCA79F5F

6183AD9A-1B41-9727-F060-3998106D16AB

select * from wfpage p where p.pageno in ('6183AD9A-1B41-9727-F060-3998106D16AB','B71788E8-B38D-4FC6-F604-76B6CCA79F5F');

update wfpage p set p.appno = 'BIZFLOW1' where p.pageno = '6183AD9A-1B41-9727-F060-3998106D16AB';
select * from admp_sp_address ;
