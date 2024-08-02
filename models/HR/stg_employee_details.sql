{{config(materialized='incremental', unique_key = 'id', merge_update_columns =['position', 'department'],)}}
select *
from {{ source('emp_src', 'employee_details') }}
{% if is_incremental() %}
    where lastupdatedate > (select max(lastupdatedate) from {{ this }})
{% endif %}