 {% set payment_mode =[ 'creditcard','debitcard','online','cash' ] %}
select  
 product,  
 {%- for payment_mode in payment_mode %} 
     sum(case when payment_method = '{{payment_mode}}' then amount end  ) 	 as {{payment_mode}}_amt    
    {%- if not loop.last%},{% endif -%} 
{%- endfor %} 

from  {{ ref('raw_payments') }} group by product


