select *
from {{ source('emp_src', 'employee_details') }}