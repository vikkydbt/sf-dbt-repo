{{config(materialized='incremental',unique_key = 'id')}}
select *  from HR_DB.RAW.EMPLOYEE_DETAILS
{% if is_incremental() %}
where LASTUPDATEDATE > (select max(LASTUPDATEDATE) from {{ this }})
{% endif %}