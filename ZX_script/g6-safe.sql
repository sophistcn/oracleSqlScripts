select t.*, t.rowid from GTSA_ACCOUNT_BALANACE t;

select *
  from (select *
          from safeexchangerate sf
         where /*sf.stanbz = 'USD'              and*/
         sf.targbz = 'GBP'
         order by sf.actdate desc)
 where rownum = 1
 ;
 
select *
          from safeexchangerate sf;
          
          
          gtse_tx; 
