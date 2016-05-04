select * from FER_RECEIPT t ;

update fer_receipt t set t.status = 0;

select * from gtsa_account_detail t where t.detail_id = 10;

select * from gtsa_account_balanace where id =1;
select * from gtsa_account t where t.account_id = 166;


insert into gtsa_account (ACCOUNT_ID, BANK_ID, ACCOUNT_TYPE_ID, BIZ_TYPE_ID, ACCOUNT_AREA, CUR_CODE, ACCOUNT_NO, ACCOUNT_NAME, CUST_NO, INNER_ACCOUNT_NO, LARGE_ALERT_AMOUNT, EXP_ABNORMAL_RATIO, ACCOUNT_STATE, ACCOUNT_LOCATION, CLT_ADDRESS, ACCOUNT_SOURCE_FROM, CONNECT_WAY)
values (gtsa_account_id_seq.nextval, 339, 4, 1, null, 'GBP', 'wzp29029', 'wzp29029', '001', null, 0.00, 0.00, 1, '1', 'хпои68391', 1, 1);

insert into gtsa_account (ACCOUNT_ID, BANK_ID, ACCOUNT_TYPE_ID, BIZ_TYPE_ID, ACCOUNT_AREA, CUR_CODE, ACCOUNT_NO, ACCOUNT_NAME, CUST_NO, INNER_ACCOUNT_NO, LARGE_ALERT_AMOUNT, EXP_ABNORMAL_RATIO, ACCOUNT_STATE, ACCOUNT_LOCATION, CLT_ADDRESS, ACCOUNT_SOURCE_FROM, CONNECT_WAY)
values (gtsa_account_id_seq.nextval, 339, 4, 1, null, 'GBP', 'wzp29030', 'wzp29030', '001', null, 0.00, 0.00, 1, '1', 'хпои68391', 1, 1);

insert into gtsa_account_detail (DETAIL_ID, BANK_NO, DETAIL_DATE, EXPLAIN, DIRECTION, ACCOUNT_NUMBER, ACCOUNT_NAME, ACCOUNT_INNER_NUMBER, ACCOUNT_INNER_NAME, CURRENCY_CODE, AMOUNT, OP_ACCOUNT_NUMBER, OP_ACCOUNT_NAME, OP_BRACH_NAME, HOST_ID, TICKET_TYPE, TICKET_NUMBER, POST_SCRIPT, HOST_TIME, RECEIVED_TIME, DETAIL_COMMENT, TRANS_TYPE, ACCOUNT_SEQ_ID, ACCOUNT_LOCATION)
values (seq_gtsa_account_detail.nextval, '01', '2016-4-25', '理由。。。', 2, 'wzp29028', '北京公司swift（欧元）', null, null, 'GBP', 1.0000, null, null, null, 'ZGZTCNB0AXX154511450231825888D', null, '2352352345sddf30', '1测试附言！11', '2015-12-16 00:00:00', null, '88', null, (select t3.account_id from gtsa_account t3 where t3.account_no = 'wzp29028'), null);


insert into gtsa_account_detail (DETAIL_ID, BANK_NO, DETAIL_DATE, EXPLAIN, DIRECTION, ACCOUNT_NUMBER, ACCOUNT_NAME, ACCOUNT_INNER_NUMBER, ACCOUNT_INNER_NAME, CURRENCY_CODE, AMOUNT, OP_ACCOUNT_NUMBER, OP_ACCOUNT_NAME, OP_BRACH_NAME, HOST_ID, TICKET_TYPE, TICKET_NUMBER, POST_SCRIPT, HOST_TIME, RECEIVED_TIME, DETAIL_COMMENT, TRANS_TYPE, ACCOUNT_SEQ_ID, ACCOUNT_LOCATION)
values (seq_gtsa_account_detail.nextval, '01', '2016-4-27', '理由。。。', 2, 'wzp29029', '北京公司swift（欧元）', null, null, 'GBP', 1.0000, null, null, null, 'ZGZTCNB0AXX154511450231825888D', null, '2352352345sddf30', '1测试附言！11', '2015-12-16 00:00:00', null, '88', null, (select t3.account_id from gtsa_account t3 where t3.account_no = 'wzp29029'), null);


insert into gtsa_account_detail (DETAIL_ID, BANK_NO, DETAIL_DATE, EXPLAIN, DIRECTION, ACCOUNT_NUMBER, ACCOUNT_NAME, ACCOUNT_INNER_NUMBER, ACCOUNT_INNER_NAME, CURRENCY_CODE, AMOUNT, OP_ACCOUNT_NUMBER, OP_ACCOUNT_NAME, OP_BRACH_NAME, HOST_ID, TICKET_TYPE, TICKET_NUMBER, POST_SCRIPT, HOST_TIME, RECEIVED_TIME, DETAIL_COMMENT, TRANS_TYPE, ACCOUNT_SEQ_ID, ACCOUNT_LOCATION)
values (seq_gtsa_account_detail.nextval, '01', '2016-4-27', '理由。。。', 2, 'wzp29030', '北京公司swift（欧元）', null, null, 'GBP', 1.0000, null, null, null, 'ZGZTCNB0AXX154511450231825888D', null, '2352352345sddf30', '1测试附言！11', '2015-12-16 00:00:00', null, '88', null, (select t3.account_id from gtsa_account t3 where t3.account_no = 'wzp29030'), null);

----收汇明细

insert into gtsa_account (ACCOUNT_ID, BANK_ID, ACCOUNT_TYPE_ID, BIZ_TYPE_ID, ACCOUNT_AREA, CUR_CODE, ACCOUNT_NO, ACCOUNT_NAME, CUST_NO, INNER_ACCOUNT_NO, LARGE_ALERT_AMOUNT, EXP_ABNORMAL_RATIO, ACCOUNT_STATE, ACCOUNT_LOCATION, CLT_ADDRESS, ACCOUNT_SOURCE_FROM, CONNECT_WAY)
values (gtsa_account_id_seq.nextval, 339, 4, 1, null, 'GBP', 'wzp29034', 'wzp29034', '001', null, 0.00, 0.00, 1, '1', 'хпои68391', 1, 1);


insert into gtsa_account_detail (DETAIL_ID, BANK_NO, DETAIL_DATE, EXPLAIN, DIRECTION, ACCOUNT_NUMBER, ACCOUNT_NAME, ACCOUNT_INNER_NUMBER, ACCOUNT_INNER_NAME, CURRENCY_CODE, AMOUNT, OP_ACCOUNT_NUMBER, OP_ACCOUNT_NAME, OP_BRACH_NAME, HOST_ID, TICKET_TYPE, TICKET_NUMBER, POST_SCRIPT, HOST_TIME, RECEIVED_TIME, DETAIL_COMMENT, TRANS_TYPE, ACCOUNT_SEQ_ID, ACCOUNT_LOCATION)
values (seq_gtsa_account_detail.nextval, '01', '2016-4-28', '理由。。。', 2, 'wzp29034', '北京公司swift（欧元）', null, null, 'GBP', 1.0000, null, null, null, 'ZGZTCNB0AXX154511450231825888D', null, '2352352345sddf30', '1测试附言！11', '2015-12-16 00:00:00', null, '88', null, (select t3.account_id from gtsa_account t3 where t3.account_no = 'wzp29034'), null);

select * from gtsa_account t where t.account_no = 'http://localhost:5001/portal/main.do'
--余额
insert into gtsa_account_balanace (ID, ACCOUNT_ID, BOOK_DATE, BANK_NO, ACCOUNT_NUMBER, CURRENCY_CODE, BALANCE, LAST_NIGHT_BALANCE, AVAILABLE_BALANCE, SAVEDATE)
values (seq_gtsa_account_balance.nextval, (select t3.account_id from gtsa_account t3 where t3.account_no = '1000001'), to_date('15-12-2015', 'dd-mm-yyyy'), '01', 'wzp71868', 'GBP', 40731.0000, null, 12508.0000, '13-4月 -16 05.05.24.000000 下午');

delete from gtsa_account_balanace bl where bl.account_id = (select t3.account_id from gtsa_account t3 where t3.account_no = '1000001');

--直接付汇选择 42  英镑
    select
        t.codename,
        t.* 
    from
        vw_fer_account t 
    where
        1=1         
        and             t.cur_code = 'GBP'                  
        and             t.account_type_id = '2'                           
        and             t.CUST_NO = '9002'    ;                   

select * from gtsa_account t;


  select
        t.codename,
        t.* 
    from
        vw_fer_account t 
    where
        1=1         
        and             t.cur_code = 'GBP'                  
        and             t.account_type_id = '2'                           
        and             t.CUST_NO = '9004'          ;
                     
update gtsa_account t4 set t4.CUST_NO = '9004' where t4.ACCOUNT_ID = 350 ;
update ns_gs_settings t set t.param_value = 'http://192.168.7.76:9081/bp-server' where t.param_name = 'BP3_SERVER_URL';

update ns_gs_settings t set t.param_value = 'http://192.168.0.142:9081/bp-server' where t.param_name = 'BP3_SERVER_URL';
select * from ns_gs_settings ;
