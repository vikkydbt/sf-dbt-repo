select {{ dbt_utils.generate_surrogate_key(['id', 'name']) }}as suK,*
from {{ source('emp_src', 'employee_details') }}

