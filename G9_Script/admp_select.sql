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
   and wmu.userID = '24'
;

select * from admp_sp_address ;


update admp_sp_address t set t.appno = 'BIZFLOW1' where t.id = 23;

select * from ns_gs_settings;

select * from wfpage p where p.appno like 'BIZFLOW%';
