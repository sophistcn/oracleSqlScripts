
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
   '九恒星集团公司国际虚拟子账户（英镑）',
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
values (2014, '9999', '利息调整', 1, '1', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, 'psy', 161, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '8000', '表外账户', 2, '5', 1, 1, 0, 0, null, 2, 1, 0, 0, 0, '表外账户', 181, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '9999', '利息调整', 1, '1', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, 'psy', 221, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '8000', '表外账户', 2, '5', 1, 1, 0, 0, null, 2, 1, 0, 0, 0, '表外账户', 222, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '8010', '12345678901234567890', 1, '1', 1, 1, 1, 0, null, 2, 0, 0, 0, 0, '12345678901234567890', 223, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '7002', '借贷平衡2', 2, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '借贷平衡2', 224, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '7001', '借贷平衡1', 1, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '借贷平衡1', 225, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '101103', '中国银行', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '存放同业/中国银行', 226, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '101104', '中国建设银行', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '存放同业/中国建设银行', 227, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '1002', '基本结算户', 1, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '基本结算户', 228, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '1001', '库存现金', 1, '1', 1, 1, 1, 0, null, 2, 0, 0, 0, 0, '库存现金', 229, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '1003', '存放中央银行款项', 1, '1', 1, 0, 1, 0, null, 2, 0, 1, 0, 0, '存放中央银行款项', 230, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '100301', '法定存款准备金', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '存放中央银行款项/法定存款准备金', 231, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '100302', '超额存款准备金', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '存放中央银行款项/超额存款准备金', 232, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '1011', '存放同业', 1, '1', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '存放同业', 233, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '101101', '中国工商银行', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '存放同业/中国工商银行', 234, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '101102', '中国农业银行', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '存放同业/中国农业银行', 235, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '1251', '贴现资产', 1, '1', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产', 236, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '125101', '贴现', 1, '1', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产/贴现', 237, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '12510101', '银行承兑汇票', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产/贴现/银行承兑汇票', 238, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '12510102', '商业承兑汇票', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产/贴现/商业承兑汇票', 239, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '12510103', '利息调整', 2, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产/贴现/利息调整', 240, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '125102', '转贴现', 1, '1', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产/转贴现', 241, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '12510201', '银行承兑汇票', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产/转贴现/银行承兑汇票', 242, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '12510202', '商业承兑汇票', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产/转贴现/商业承兑汇票', 243, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '12510203', '利息调整', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产/转贴现/利息调整', 244, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '1301', '贷款', 1, '1', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '贷款', 245, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '130101', '流动资金贷款', 1, '1', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '贷款/流动资金贷款', 246, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '13010101', '短期', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贷款/流动资金贷款/短期', 247, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '13010102', '中长期', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贷款/流动资金贷款/中长期', 248, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '13010103', '流动贷款', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贷款/流动资金贷款/流动贷款', 249, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '130102', '项目贷款', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '贷款/项目贷款', 250, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '130103', '银团贷款', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '贷款/银团贷款', 251, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '130105', '非应计贷款', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '贷款/非应计贷款', 252, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '130106', '买入信贷资产', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '贷款/买入信贷资产', 253, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '1711', '商誉', 1, '1', 1, 1, 0, 0, null, 1, 1, 0, 0, 0, '商誉', 254, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '1801', '长期待摊费用', 1, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '长期待摊费用', 255, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '2012', '吸收存款', 2, '2', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款', 256, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '201201', '活期存款', 2, '2', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/活期存款', 257, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120101', '一般结算', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/活期存款/一般结算', 258, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120102', '协定存款', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/活期存款/协定存款', 259, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120103', '专用账户', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/活期存款/专用账户', 260, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '201202', '定期存款', 2, '2', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/定期存款', 261, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120201', '三个月', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/定期存款/三个月', 262, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120202', '六个月', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/定期存款/六个月', 263, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120203', '一年', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/定期存款/一年', 264, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120204', '二年', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/定期存款/二年', 265, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120205', '三年', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/定期存款/三年', 266, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120206', '五年', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/定期存款/五年', 267, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120207', '五年以上', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/定期存款/五年以上', 268, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '201203', '通知存款', 2, '2', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/通知存款', 269, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120301', '一天', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/通知存款/一天', 270, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '20120302', '七天', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/通知存款/七天', 271, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '2241', '其它应付款', 2, '2', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '其它应付款', 272, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '224101', '其它应付款', 2, '2', 2, 1, 1, 0, null, 1, 0, 0, 0, 0, '其它应付款/其它应付款', 273, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '3002', '货币兑换', 2, '3', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '货币兑换', 274, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '300201', '货币兑换-人民币兑美元', 2, '3', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '货币兑换/货币兑换-人民币兑美元', 275, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '300202', '货币兑换-美元兑人民币', 2, '3', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '货币兑换/货币兑换-美元兑人民币', 276, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '6021', '手续费及佣金收入', 2, '5', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '手续费及佣金收入', 277, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '602101', '手续费及佣金收入', 2, '5', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '手续费及佣金收入/手续费及佣金收入', 278, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '6061', '汇兑损益', 2, '5', 1, 1, 1, 0, null, 2, 0, 0, 0, 0, '汇兑损益', 279, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '6101', '利息收入', 2, '5', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, '利息收入', 280, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '6102', '应收利息', 1, '1', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, '应收利息', 281, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '6103', '利息支出', 2, '5', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, '利息支出', 282, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '9998', '存单', 1, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '存单', 283, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '8010', '12345678901234567', 1, '1', 1, 1, 1, 0, null, 2, 0, 0, 0, 0, '1234567890', 201, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '7002', '借贷平衡2', 2, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '借贷平衡2', 85, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '7001', '借贷平衡1', 1, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '借贷平衡1', 86, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '101103', '中国银行', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '存放同业/中国银行', 87, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '101104', '中国建设银行', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '存放同业/中国建设银行', 88, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '1002', '基本结算户', 1, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '基本结算户', 89, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '1001', '库存现金', 1, '1', 1, 1, 1, 0, null, 2, 0, 0, 0, 0, '库存现金', 90, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '1003', '存放中央银行款项', 1, '1', 1, 0, 1, 0, null, 2, 0, 1, 0, 0, '存放中央银行款项', 91, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '100301', '法定存款准备金', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '存放中央银行款项/法定存款准备金', 92, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '100302', '超额存款准备金', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '存放中央银行款项/超额存款准备金', 93, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '1011', '存放同业', 1, '1', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '存放同业', 94, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '101101', '中国工商银行', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '存放同业/中国工商银行', 95, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '101102', '中国农业银行', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '存放同业/中国农业银行', 96, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '1251', '贴现资产', 1, '1', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产', 97, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '125101', '贴现', 1, '1', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产/贴现', 98, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '12510101', '银行承兑汇票', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产/贴现/银行承兑汇票', 99, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '12510102', '商业承兑汇票', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产/贴现/商业承兑汇票', 100, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '12510103', '利息调整', 2, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产/贴现/利息调整', 101, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '125102', '转贴现', 1, '1', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产/转贴现', 102, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '12510201', '银行承兑汇票', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产/转贴现/银行承兑汇票', 103, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '12510202', '商业承兑汇票', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产/转贴现/商业承兑汇票', 104, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '12510203', '利息调整', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贴现资产/转贴现/利息调整', 105, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '1301', '贷款', 1, '1', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '贷款', 106, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '130101', '流动资金贷款', 1, '1', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '贷款/流动资金贷款', 107, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '13010101', '短期', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贷款/流动资金贷款/短期', 108, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '13010102', '中长期', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贷款/流动资金贷款/中长期', 109, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '13010103', '流动贷款', 1, '1', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '贷款/流动资金贷款/流动贷款', 110, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '130102', '项目贷款', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '贷款/项目贷款', 111, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '130103', '银团贷款', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '贷款/银团贷款', 112, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '130105', '非应计贷款', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '贷款/非应计贷款', 113, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '130106', '买入信贷资产', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '贷款/买入信贷资产', 114, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '1711', '商誉', 1, '1', 1, 1, 0, 0, null, 1, 1, 0, 0, 0, '商誉', 115, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '1801', '长期待摊费用', 1, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '长期待摊费用', 116, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '2012', '吸收存款', 2, '2', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款', 117, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '201201', '活期存款', 2, '2', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/活期存款', 118, '001');
commit;

insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120101', '一般结算', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/活期存款/一般结算', 119, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120102', '协定存款', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/活期存款/协定存款', 120, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120103', '专用账户', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/活期存款/专用账户', 121, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '201202', '定期存款', 2, '2', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/定期存款', 122, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120201', '三个月', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/定期存款/三个月', 123, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120202', '六个月', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/定期存款/六个月', 124, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120203', '一年', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/定期存款/一年', 125, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120204', '二年', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/定期存款/二年', 126, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120205', '三年', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/定期存款/三年', 127, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120206', '五年', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/定期存款/五年', 128, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120207', '五年以上', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/定期存款/五年以上', 129, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '201203', '通知存款', 2, '2', 2, 0, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/通知存款', 130, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120301', '一天', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/通知存款/一天', 131, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '20120302', '七天', 2, '2', 3, 1, 1, 0, null, 2, 0, 0, 0, 0, '吸收存款/通知存款/七天', 132, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '2241', '其它应付款', 2, '2', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '其它应付款', 133, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '224101', '其它应付款', 2, '2', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '其它应付款/其它应付款', 134, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '3002', '货币兑换', 2, '3', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '货币兑换', 135, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '300201', '货币兑换-人民币兑美元', 2, '3', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '货币兑换/货币兑换-人民币兑美元', 136, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '300202', '货币兑换-美元兑人民币', 2, '3', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '货币兑换/货币兑换-美元兑人民币', 137, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '6021', '手续费及佣金收入', 2, '5', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '手续费及佣金收入', 138, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '602101', '手续费及佣金收入', 2, '5', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '手续费及佣金收入/手续费及佣金收入', 139, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '6061', '汇兑损益', 2, '5', 1, 1, 1, 0, null, 2, 0, 0, 0, 0, '汇兑损益', 140, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '6101', '利息收入', 2, '5', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, '利息收入', 141, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '6102', '应收利息', 1, '1', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, '应收利息', 142, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '6103', '利息支出', 2, '5', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, '利息支出', 143, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2014, '9998', '存单', 1, '1', 1, 1, 0, 0, null, 1, 0, 0, 0, 0, '存单', 144, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '190101', '活期账户存款', 1, '1', 1, 1, 0, 0, null, 2, 0, 0, 0, 0, '活期账户存款', 301, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '190201', '北京分公司-活期户-英镑', 1, '1', 1, 1, 1, 0, null, 2, 0, 0, 0, 0, '北京分公司-活期户-英镑', 321, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '2242', '其他应收款', 1, '1', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '其他应收款', 343, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '224201', '其他应收款', 1, '1', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '其他应收款/其他应收款', 344, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '6022', '手续费及佣金支出', 2, '5', 1, 0, 1, 0, null, 2, 0, 0, 0, 0, '手续费及佣金支出', 349, '001');
insert into AKM (yr, km, kmname, dir, kmgrp, kmlevel, isleaf, cashtype, qtyflag, qtyunit, business, outflag, limitmode, quota, usestate, kmpath, id, brno)
values (2015, '602201', '手续费及佣金支出', 2, '5', 2, 1, 1, 0, null, 2, 0, 0, 0, 0, '手续费及佣金支出/手续费及佣金支出', 350, '001');
    
select * from VW_CntAcnt;
    select v.NO       as "innerAccountNo",
           v.NAME     as "innerAccountName",
           v.CLIENTID as "custNo",
           v.CLTNAME  as "custName",
           v.KMH      as "subjectNo",
           v.bz       as "currencyNo"
      from VW_CntAcnt v
     where v.state = 0 /*0：正常，1：冻结，2：封存，3：清户*/
       and v.clientid = '001'
       and v.bz = 'GBP'
;

select * from AMNY t for update;



insert into ns_gs_settings (PM_ID, PARAM_NAME, PARAM_VALUE, MODULE_ID, EXEC_ORDER, IS_HOST, CREATE_TIME, PARAM_MEMO, PARAM_TITLE, GUI_CTL, MULTI_DIC_CODE, PARAM_TYPE)
values (ns_gs_settings_seq.nextval, 'BP3_SERVER_URL', 'http://192.168.0.142:9081/bp-server', 'BPC3', 185, null, to_date('05-03-2015', 'dd-mm-yyyy'), null, null, 'Y', null, 'SYS');




select * from gtsa_acc_tx_map;
select * from gtsa_account;
insert into gtsa_account_balanace (ACCOUNT_ID, BOOK_DATE, BANK_NO, ACCOUNT_NUMBER, CURRENCY_CODE, BALANCE, LAST_NIGHT_BALANCE, AVAILABLE_BALANCE, ID, SAVEDATE)
values (4 , to_date('26-11-2015', 'dd-mm-yyyy'), '01', '001002002002', 'GBP', 1221218.8100, null, 1233221121.2001, 733, '27-11月-15 09.57.03.000000 上午');

insert into gtsa_account_balanace (ACCOUNT_ID, BOOK_DATE, BANK_NO, ACCOUNT_NUMBER, CURRENCY_CODE, BALANCE, LAST_NIGHT_BALANCE, AVAILABLE_BALANCE, ID, SAVEDATE)
values (5 , to_date('26-11-2015', 'dd-mm-yyyy'), '01', '001002003', 'GBP', 1221218.8100, null, 1233221121.2001, 733, '27-11月-15 09.57.03.000000 上午');

insert into fer_remitter (REMITTERID, CLTNO, CLTNAME, REMITTERIDADDRESS, REMITTERORGANIZATION, MSGTYPE, REMITTERSWIFTNUM, REMITTERCOUNTRYANDCITY, CREATETIME, LASTUPDATETIME)
values (fer_remitter_seq.nextval , '001', '九恒星财务公司', '汇款人地址的点点滴滴的', 'JDF12345-9', '1', 'CWGSSWFT', 'BJ/CHINA', to_date('07-07-2015 17:01:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('07-07-2015 17:01:16', 'dd-mm-yyyy hh24:mi:ss'));
