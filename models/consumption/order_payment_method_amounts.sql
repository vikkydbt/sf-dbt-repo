select 
  product, 
  sum(case when payment_method = 'creditcard'then amount end  ) as creditcard_amt, 
  sum(case when payment_method = 'debitcard' then amount end  ) as debitcard_amt, 
  sum(case when payment_method = 'online'    then amount end  ) as online_amt, 
  
  sum(amount) as total_amount                                       
from {{ ref('raw_payments') }} 
group by product
 