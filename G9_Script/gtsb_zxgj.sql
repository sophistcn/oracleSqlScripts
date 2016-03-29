update wf_master_user set PWDBS='A7C4CF40DDD6511809FAEECCBDE6EDA7139AAECB', PWDCS='dHVyYndlMWVydDA9' where uno='00101';

select * from ns_gs_settings ;
update ns_gs_settings s set s.param_value = '127.0.0.1:9999' where s.pm_id = 2;

select * from gtsa_account;

