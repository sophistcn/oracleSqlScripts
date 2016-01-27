select c.*
  from (select t.job_set_id   as "jobSetId",
               t.job_set_no   as "jobSetNo",
               t.tx_type_id   as "txTypeId",
               t.total_number as "totalNumber",
               t.currency_no  as "currencyNo",
               t.total_amount as "totalAmount",
               t.create_date  as "createDate",
               t.effect_date  as "effectDate",
               t.flow_state   as "flowState",
               t.tree_id      as "treeId",
               t.biz_case_id  as "bizCaseId",
               um.inputor     as "inputor",
               rownum         r
          from gtsc_job_set t
          left join um_form um
            on t.fmid = um.fmid
         where t.flow_state in (1, 4) /*�ݴ�,����*/
           and t.biz_case_id is null) c;

select * from gtsc_job_set st;

select * from gtsc_tx tx where tx.settle_mark = 1 and tx.foreign_error_code is not null;
