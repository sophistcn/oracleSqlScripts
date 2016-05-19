select * from wf_master_user ;

update wf_master_user set PWDBS='84D7896F58F73744CEA38DB146328B53D8BA7224', PWDCS='cXpubXdrcmh2bHJudXQwOQ==' where uno='system1';
update wf_master_user set PWDBS='D98E7399BC99DB1C6434FA57D3B440AFC160C1BA', PWDCS='d3Zkc3ZlZnhuZmc9' where uno='admin1';
update wf_master_user set PWDBS='809B10989386CE5CFB72A6299F0024BFC75F260B', PWDCS='d3Zod3MwZnl1dmc9' where uno='audit1';
update wf_master_user set PWDBS='4E44623924F1742B186E72E2A06064D304A6E901', PWDCS='dHVyYndhPT0=' where uno='001';
update wf_master_user set PWDBS='F62D828756F8B23BF1F3E334AB23B6CB705891F9', PWDCS='dHVwanBxPT0=' where uno='22';

select * from ns_gs_settings ;

select * from admp_sp_address ;

CREATE OR REPLACE TYPE "WF_USER_PAGES_TABLE"                    is table of WF_USER_PAGES_ROW;


create or replace type WF_USER_PAGES_ROW  as object
(
  userId integer,
  pageId integer,
  pageno varchar2(255),
  URL varchar2(255),
  appno varchar2(36)
) ;


select * from admp_sp_address ;
select * from wf_menu_tree ;

select * from wfpage w where w.appno  = 'IBS-Web';

select * from ibs_account;
