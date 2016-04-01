prompt Importing table gtsa_account_balanace...
set feedback off
set define off
insert into gtsa_account_balanace (ID, ACCOUNT_ID, BOOK_DATE, BANK_NO, ACCOUNT_NUMBER, CURRENCY_CODE, BALANCE, LAST_NIGHT_BALANCE, AVAILABLE_BALANCE, SAVEDATE)
values (1, 23, to_date('15-12-2015', 'dd-mm-yyyy'), '01', '55550001', 'EUR', 999999.0000, null, 999999.0000, '15-12ÔÂ-15 03.53.58.000000 ÏÂÎç');

prompt Done.
