{{ dbt_utils.deduplicate(
    relation=source('emp_src', 'dept'),
    partition_by='deptno',
    order_by="DNAME desc",
   )
}}
 