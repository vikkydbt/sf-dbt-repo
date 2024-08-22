 select  
 product,  
  amount,
  {{calculate_tax('amount')}} as amt_with_12tax , 
  {{calculate_tax('amount',30)}} as amt_with_30tax  
from  {{ ref('raw_payments') }}  