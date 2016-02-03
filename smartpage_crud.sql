select * from smb_page p where p.pageid like 'gtsa%';
select * from smb_unit u where u.ppid = '1428650553569';
select * from smb_element ;
select * from gtsc_time_period ;
select * from gtsa_account_apply t where t.account_no like '44%';

select count(*) from gtsa_bank_info bk inner join cnaps cn on bk.open_bank_no = cn.cnapsno
