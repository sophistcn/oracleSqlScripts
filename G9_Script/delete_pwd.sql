select * from wf_menu_tree;

update wf_master_user t set t.pwdbs='84D7896F58F73744CEA38DB146328B53D8BA7224', t.pwdcs='cXpubXdrcmh2bHJudXQwOQ==' where uno='system1';


update wf_master_user t set t.pwdbs='D98E7399BC99DB1C6434FA57D3B440AFC160C1BA', t.PWDCS='d3Zkc3ZlZnhuZmc9' where uno='admin1';


update wf_master_user t set t.pwdbs='809B10989386CE5CFB72A6299F0024BFC75F260B', t.PWDCS='d3Zod3MwZnl1dmc9' where uno='audit1';

update wf_master_user t set t.pwdbs='4E44623924F1742B186E72E2A06064D304A6E901', t.PWDCS='dHVyYndhPT0=' where uno='001';

update wf_master_user set PWDBS='D98E7399BC99DB1C6434FA57D3B440AFC160C1BA', PWDCS='dHVyYndmaGFydDA9' where uno='001_1';

select * from wf_menu_tree t where t.menuid like 'ns%';
