prompt Importing table bp3_server_callback...
set feedback off
set define off
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

prompt Done.
