{% set payment_mode =[ 'creditcard','debitcard','online' ] %}
select  
 product,  
 {% for payment_mode in payment_mode -%} 
     sum(case when payment_method = '{{payment_mode}}' then amount end  ) as {{payment_mode}}_amt    
{% endfor %} 
{% if not loop.last %},{% endif %}
from  {{ ref('raw_payments') }} group by product
