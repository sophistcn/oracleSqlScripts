exp wzp/wzp@xe file=G:\g9.1.bak ; --full=y ;

imp zx/zx@xe file=G:\g9.2.bak;

imp wzp/wzp@localhost:1521/xe full=y file=C:\table\NSTEST1_NSTCSA2661_20150915_153921.DMP log=C:\table\NSTEST1_NSTCSA2661_20150915_153921.log  ignore=y;

exp system/********@NSDEV1 owner="NSTCSA7684" file="D:/NSTC_BACKUP/NSDEV1_NSTCSA7684_20160314_112741.DMP" feedback=1024000 

imp system/********@NSDEV1 fromuser="NSTCSA7684" touser="NSTCSA4642" file="D:/NSTC_BACKUP/NSDEV1_NSTCSA7684_20160314_112741.DMP" ignore=y feedback=5000

imp fss/fss@localhost:1521/xe full=y file=G:\db_backup\Nstc006_fss.dmp log=G:\db_backup\import.log  ignore=y;


exp fss/fss@xe file=G:\db_backup\n9.fss.base.dmp ; --full=y ;

imp fss/fss@xe file=G:\db_backup\n9.fss.base.dmp ;


exp sms/sms@xe file=G:\db_backup\n9.sms.base.dmp ; --full=y ;

imp sms1/sms1@xe file=G:\db_backup\n9.sms.base.dmp ;

exp fss/fss@xe owner="fss" file="G:\db_backup\n9.fss.base.test.dmp" feedback=1024000 full=y;

imp fss1/fss1@xe fromuser="fss" touser="fss1" file="G:\db_backup\n9.fss.base.dmp" ignore=y feedback=5000



imp sms1/sms1@xe fromuser="sms" touser="sms1" file="G:\db_backup\n9.sms.base.dmp" ignore=y feedback=5000


imp sms2/sms2@xe fromuser="sms" touser="sms2" file="G:\db_backup\n9.sms.base.dmp" ignore=y feedback=5000