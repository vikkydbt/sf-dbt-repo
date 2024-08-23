select  PAYMENT_METHOD,  
       {{ dbt_utils.pivot('product', dbt_utils.get_column_values(ref('raw_payments'), 'product') ) }}
from {{ ref('raw_payments') }}
group by PAYMENT_METHOD