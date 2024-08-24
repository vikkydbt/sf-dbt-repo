select {{ dbt_utils.generate_surrogate_key(['ID', 'Name']) }} as sk_emp,*
from {{ source('emp_src', 'employee_details') }}