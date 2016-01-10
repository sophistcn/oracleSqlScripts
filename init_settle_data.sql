
select * from wf_menu_tree t where t.menuid like 'ns%';

select * from cb_account;

select * from user_constraints c where c.constraint_name like 'FK_CB%'; -- c.table_name = 'cb_account';

select * from user_constraints c where c.constraint_name like 'PK_NSCUSTOM%';

select * from NSCLIENT t;

insert into cb_account
  (ACCOUNT_ID,
   BRANCH_NO,
   CUR_NO,
   ACNT_TYPE_ID,
   ACCOUNT_NO,
   ACCOUNT_NAME,
   MEMBER_NO,
   SUBJECT_NO,
   ACCOUNT_STATE,
   BAL_DIR,
   OPEN_DATE,
   MATURITY_DATE,
   CLOSE_DATE,
   LIMIT_TYPE,
   LIMIT_AMOUNT,
   THIRD_MEMBER_NO,
   GLOBAL_FLAG,
   MC_FILL_MODE,
   MC_GROUP,
   MC_CODE,
   BALANCE,
   REMARK,
   CHECK_NUM,
   CREATE_TIME,
   LAST_CHG_TIME,
   IS_CMS_ACCOUNT,
   FREEZEDATE)
values
  (cb_account_seq.nextval,
   '001',
   'GBP',
   199,
   '101101-0000021',
   '�ź��Ǽ��Ź�˾�����������˻���Ӣ����',
   '001',
   '1001',
   0,
   1,
   to_date('22-07-2015', 'dd-mm-yyyy'),
   null,
   null,
   1,
   0.00,
   null,
   0,
   0,
   '0',
   null,
   0.00,
   null,
   'OLDTYPE',
   to_date('22-07-2015 17:33:15', 'dd-mm-yyyy hh24:mi:ss'),
   to_date('22-07-2015 17:33:15', 'dd-mm-yyyy hh24:mi:ss'),
   0,
   null);

select * from cb_account;



insert into CB_ACCOUNT_EXT (ACCOUNT_EXT_ID, ACCOUNT_ID, EXT_KEY, EXT_VALUE, EXT_MEMO)
values (181, 4, 'CALCINTR', '0', null);

insert into CB_ACCOUNT_EXT (ACCOUNT_EXT_ID, ACCOUNT_ID, EXT_KEY, EXT_VALUE, EXT_MEMO)
values (182, 4, 'DAYMODE', '0', null);

insert into CB_ACCOUNT_EXT (ACCOUNT_EXT_ID, ACCOUNT_ID, EXT_KEY, EXT_VALUE, EXT_MEMO)
values (183, 4, 'FEEMODE1', '0', null);

insert into CB_ACCOUNT_EXT (ACCOUNT_EXT_ID, ACCOUNT_ID, EXT_KEY, EXT_VALUE, EXT_MEMO)
values (184, 4, 'FEEMODE2', '0', null);


insert into ayear (YR, STARTFLAG, STARTDATE, CLOSETAG, TURNFLAG)
values (2015, 0, to_date('01-01-2015', 'dd-mm-yyyy'), 0, 0);

insert into ayear (YR, STARTFLAG, STARTDATE, CLOSETAG, TURNFLAG)
values (2014, 1, to_date('01-04-2014', 'dd-mm-yyyy'), 0, 0);


insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '9999', '��Ϣ����', 1, '1', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, 'psy', 161, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '8000', '�����˻�', 2, '5', 1, 1, 0, 0, null, 2, 1, 0, 0, 0, '�����˻�', 181, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '9999', '��Ϣ����', 1, '1', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, 'psy', 221, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '8000', '�����˻�', 2, '5', 1, 1, 0, 0, null, 2, 1, 0, 0, 0, '�����˻�', 222, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '8010', '12345678901234567890', 1, '1', 1, 1, 1, 0, null, 2, 0, 0, 0, 0, '12345678901234567890', 223, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '7002', '���ƽ��2', 2, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '���ƽ��2', 224, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '7001', '���ƽ��1', 1, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '���ƽ��1', 225, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '101103', '�й�����', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '���ͬҵ/�й�����', 226, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '101104', '�й���������', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '���ͬҵ/�й���������', 227, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '1002', '�������㻧', 1, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '�������㻧', 228, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '1001', '����ֽ�', 1, '1', 1, 1, 1, 0, null, 2, 0, 0, 0, 0, '����ֽ�', 229, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '1003', '����������п���', 1, '1', 1, 0, 1, 0, null, 2, 0, 1, 0, 0, '����������п���', 230, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '100301', '�������׼����', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '����������п���/�������׼����', 231, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '100302', '������׼����', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '����������п���/������׼����', 232, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '1011', '���ͬҵ', 1, '1', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '���ͬҵ', 233, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '101101', '�й���������', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '���ͬҵ/�й���������', 234, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '101102', '�й�ũҵ����', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '���ͬҵ/�й�ũҵ����', 235, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '1251', '�����ʲ�', 1, '1', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�', 236, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '125101', '����', 1, '1', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�/����', 237, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '12510101', '���гжһ�Ʊ', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�/����/���гжһ�Ʊ', 238, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '12510102', '��ҵ�жһ�Ʊ', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�/����/��ҵ�жһ�Ʊ', 239, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '12510103', '��Ϣ����', 2, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�/����/��Ϣ����', 240, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '125102', 'ת����', 1, '1', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�/ת����', 241, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '12510201', '���гжһ�Ʊ', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�/ת����/���гжһ�Ʊ', 242, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '12510202', '��ҵ�жһ�Ʊ', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�/ת����/��ҵ�жһ�Ʊ', 243, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '12510203', '��Ϣ����', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�/ת����/��Ϣ����', 244, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '1301', '����', 1, '1', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '����', 245, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '130101', '�����ʽ����', 1, '1', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '����/�����ʽ����', 246, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '13010101', '����', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '����/�����ʽ����/����', 247, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '13010102', '�г���', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '����/�����ʽ����/�г���', 248, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '13010103', '��������', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '����/�����ʽ����/��������', 249, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '130102', '��Ŀ����', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '����/��Ŀ����', 250, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '130103', '���Ŵ���', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '����/���Ŵ���', 251, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '130105', '��Ӧ�ƴ���', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '����/��Ӧ�ƴ���', 252, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '130106', '�����Ŵ��ʲ�', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '����/�����Ŵ��ʲ�', 253, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '1711', '����', 1, '1', 1, 1, 0, 0, null, 1, 1, 0, 0, 0, '����', 254, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '1801', '���ڴ�̯����', 1, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '���ڴ�̯����', 255, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '2012', '���մ��', 2, '2', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '���մ��', 256, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '201201', '���ڴ��', 2, '2', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��', 257, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120101', 'һ�����', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/һ�����', 258, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120102', 'Э�����', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/Э�����', 259, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120103', 'ר���˻�', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/ר���˻�', 260, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '201202', '���ڴ��', 2, '2', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��', 261, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120201', '������', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/������', 262, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120202', '������', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/������', 263, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120203', 'һ��', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/һ��', 264, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120204', '����', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/����', 265, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120205', '����', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/����', 266, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120206', '����', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/����', 267, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120207', '��������', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/��������', 268, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '201203', '֪ͨ���', 2, '2', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/֪ͨ���', 269, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120301', 'һ��', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/֪ͨ���/һ��', 270, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120302', '����', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/֪ͨ���/����', 271, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '2241', '����Ӧ����', 2, '2', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '����Ӧ����', 272, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '224101', '����Ӧ����', 2, '2', 2, 1, 1, 0, null, 1, 0, 0, 0, 0, '����Ӧ����/����Ӧ����', 273, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '3002', '���Ҷһ�', 2, '3', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '���Ҷһ�', 274, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '300201', '���Ҷһ�-����Ҷ���Ԫ', 2, '3', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '���Ҷһ�/���Ҷһ�-����Ҷ���Ԫ', 275, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '300202', '���Ҷһ�-��Ԫ�������', 2, '3', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '���Ҷһ�/���Ҷһ�-��Ԫ�������', 276, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '6021', '�����Ѽ�Ӷ������', 2, '5', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '�����Ѽ�Ӷ������', 277, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '602101', '�����Ѽ�Ӷ������', 2, '5', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '�����Ѽ�Ӷ������/�����Ѽ�Ӷ������', 278, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '6061', '�������', 2, '5', 1, 1, 1, 0, null, 2, 0, 0, 0, 0, '�������', 279, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '6101', '��Ϣ����', 2, '5', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, '��Ϣ����', 280, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '6102', 'Ӧ����Ϣ', 1, '1', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, 'Ӧ����Ϣ', 281, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '6103', '��Ϣ֧��', 2, '5', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, '��Ϣ֧��', 282, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '9998', '�浥', 1, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '�浥', 283, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '8010', '12345678901234567', 1, '1', 1, 1, 1, 0, null, 2, 0, 0, 0, 0, '1234567890', 201, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '7002', '���ƽ��2', 2, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '���ƽ��2', 85, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '7001', '���ƽ��1', 1, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '���ƽ��1', 86, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '101103', '�й�����', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '���ͬҵ/�й�����', 87, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '101104', '�й���������', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '���ͬҵ/�й���������', 88, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '1002', '�������㻧', 1, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '�������㻧', 89, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '1001', '����ֽ�', 1, '1', 1, 1, 1, 0, null, 2, 0, 0, 0, 0, '����ֽ�', 90, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '1003', '����������п���', 1, '1', 1, 0, 1, 0, null, 2, 0, 1, 0, 0, '����������п���', 91, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '100301', '�������׼����', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '����������п���/�������׼����', 92, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '100302', '������׼����', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '����������п���/������׼����', 93, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '1011', '���ͬҵ', 1, '1', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '���ͬҵ', 94, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '101101', '�й���������', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '���ͬҵ/�й���������', 95, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '101102', '�й�ũҵ����', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '���ͬҵ/�й�ũҵ����', 96, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '1251', '�����ʲ�', 1, '1', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�', 97, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '125101', '����', 1, '1', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�/����', 98, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '12510101', '���гжһ�Ʊ', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�/����/���гжһ�Ʊ', 99, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '12510102', '��ҵ�жһ�Ʊ', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�/����/��ҵ�жһ�Ʊ', 100, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '12510103', '��Ϣ����', 2, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�/����/��Ϣ����', 101, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '125102', 'ת����', 1, '1', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�/ת����', 102, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '12510201', '���гжһ�Ʊ', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�/ת����/���гжһ�Ʊ', 103, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '12510202', '��ҵ�жһ�Ʊ', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�/ת����/��ҵ�жһ�Ʊ', 104, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '12510203', '��Ϣ����', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '�����ʲ�/ת����/��Ϣ����', 105, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '1301', '����', 1, '1', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '����', 106, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '130101', '�����ʽ����', 1, '1', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '����/�����ʽ����', 107, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '13010101', '����', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '����/�����ʽ����/����', 108, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '13010102', '�г���', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '����/�����ʽ����/�г���', 109, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '13010103', '��������', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '����/�����ʽ����/��������', 110, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '130102', '��Ŀ����', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '����/��Ŀ����', 111, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '130103', '���Ŵ���', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '����/���Ŵ���', 112, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '130105', '��Ӧ�ƴ���', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '����/��Ӧ�ƴ���', 113, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '130106', '�����Ŵ��ʲ�', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '����/�����Ŵ��ʲ�', 114, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '1711', '����', 1, '1', 1, 1, 0, 0, null, 1, 1, 0, 0, 0, '����', 115, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '1801', '���ڴ�̯����', 1, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '���ڴ�̯����', 116, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '2012', '���մ��', 2, '2', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '���մ��', 117, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '201201', '���ڴ��', 2, '2', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��', 118, '001');
commit;

insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120101', 'һ�����', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/һ�����', 119, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120102', 'Э�����', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/Э�����', 120, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120103', 'ר���˻�', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/ר���˻�', 121, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '201202', '���ڴ��', 2, '2', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��', 122, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120201', '������', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/������', 123, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120202', '������', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/������', 124, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120203', 'һ��', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/һ��', 125, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120204', '����', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/����', 126, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120205', '����', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/����', 127, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120206', '����', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/����', 128, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120207', '��������', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/���ڴ��/��������', 129, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '201203', '֪ͨ���', 2, '2', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/֪ͨ���', 130, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120301', 'һ��', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/֪ͨ���/һ��', 131, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120302', '����', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '���մ��/֪ͨ���/����', 132, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '2241', '����Ӧ����', 2, '2', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '����Ӧ����', 133, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '224101', '����Ӧ����', 2, '2', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '����Ӧ����/����Ӧ����', 134, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '3002', '���Ҷһ�', 2, '3', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '���Ҷһ�', 135, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '300201', '���Ҷһ�-����Ҷ���Ԫ', 2, '3', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '���Ҷһ�/���Ҷһ�-����Ҷ���Ԫ', 136, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '300202', '���Ҷһ�-��Ԫ�������', 2, '3', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '���Ҷһ�/���Ҷһ�-��Ԫ�������', 137, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '6021', '�����Ѽ�Ӷ������', 2, '5', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '�����Ѽ�Ӷ������', 138, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '602101', '�����Ѽ�Ӷ������', 2, '5', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '�����Ѽ�Ӷ������/�����Ѽ�Ӷ������', 139, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '6061', '�������', 2, '5', 1, 1, 1, 0, null, 2, 0, 0, 0, 0, '�������', 140, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '6101', '��Ϣ����', 2, '5', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, '��Ϣ����', 141, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '6102', 'Ӧ����Ϣ', 1, '1', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, 'Ӧ����Ϣ', 142, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '6103', '��Ϣ֧��', 2, '5', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, '��Ϣ֧��', 143, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '9998', '�浥', 1, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '�浥', 144, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '190101', '�����˻����', 1, '1', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, '�����˻����', 301, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '190201', '�����ֹ�˾-���ڻ�-Ӣ��', 1, '1', 1, 1, 1, 0, null, 2, 0, 0, 0, 0, '�����ֹ�˾-���ڻ�-Ӣ��', 321, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '2242', '����Ӧ�տ�', 1, '1', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '����Ӧ�տ�', 343, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '224201', '����Ӧ�տ�', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '����Ӧ�տ�/����Ӧ�տ�', 344, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '6022', '�����Ѽ�Ӷ��֧��', 2, '5', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '�����Ѽ�Ӷ��֧��', 349, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '602201', '�����Ѽ�Ӷ��֧��', 2, '5', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '�����Ѽ�Ӷ��֧��/�����Ѽ�Ӷ��֧��', 350, '001');
    
select * from VW_CntAcnt;
    select v.NO       as "innerAccountNo",
           v.NAME     as "innerAccountName",
           v.CLIENTID as "custNo",
           v.CLTNAME  as "custName",
           v.KMH      as "subjectNo",
           v.bz       as "currencyNo"
      from VW_CntAcnt v
     where v.state = 0 /*0��������1�����ᣬ2����棬3���廧*/
       and v.clientid = '001'
       and v.bz = 'GBP'
;

select * from AMNY t for update;



insert into ns_gs_settings (PM_ID, PARAM_NAME, PARAM_VALUE, MODULE_ID, EXEC_ORDER, IS_HOST, CREATE_TIME, PARAM_MEMO, PARAM_TITLE, GUI_CTL, MULTI_DIC_CODE, PARAM_TYPE)
values (ns_gs_settings_seq.nextval, 'BP3_SERVER_URL', 'http://192.168.0.142:9081/bp-server', 'BPC3', 185, null, to_date('05-03-2015', 'dd-mm-yyyy'), null, null, 'Y', null, 'SYS');




select * from gtsa_acc_tx_map;
select * from gtsa_account;
insert into gtsa_account_balanace (ACCOUNT_ID, BOOK_DATE, BANK_NO, ACCOUNT_NUMBER, CURRENCY_CODE, BALANCE, LAST_NIGHT_BALANCE, AVAILABLE_BALANCE, ID, SAVEDATE)
values (4 , to_date('26-11-2015', 'dd-mm-yyyy'), '01', '001002002002', 'GBP', 1221218.8100, null, 1233221121.2001, 733, '27-11��-15 09.57.03.000000 ����');

insert into gtsa_account_balanace (ACCOUNT_ID, BOOK_DATE, BANK_NO, ACCOUNT_NUMBER, CURRENCY_CODE, BALANCE, LAST_NIGHT_BALANCE, AVAILABLE_BALANCE, ID, SAVEDATE)
values (5 , to_date('26-11-2015', 'dd-mm-yyyy'), '01', '001002003', 'GBP', 1221218.8100, null, 1233221121.2001, 733, '27-11��-15 09.57.03.000000 ����');

insert into fer_remitter (REMITTERID, CLTNO, CLTNAME, REMITTERIDADDRESS, REMITTERORGANIZATION, MSGTYPE, REMITTERSWIFTNUM, REMITTERCOUNTRYANDCITY, CREATETIME, LASTUPDATETIME)
values (fer_remitter_seq.nextval , '001', '�ź��ǲ���˾', '����˵�ַ�ĵ��εε�', 'JDF12345-9', '1', 'CWGSSWFT', 'BJ/CHINA', to_date('07-07-2015 17:01:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('07-07-2015 17:01:16', 'dd-mm-yyyy hh24:mi:ss'));
