 select  
 product,  
 {% for payment_mode in get_payment_method() %} 
     sum(case when payment_method = '{{payment_mode}}' then amount end  ) as {{payment_mode}}_amt    
{%- if not loop.last%},{% endif -%} 
{% endfor %} 

from  {{ ref('raw_payments') }} group by product