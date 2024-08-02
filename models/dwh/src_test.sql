 select orderid,sum(quantity*unitprice) as total_amout 
 from  {{ source('anb_src', 'myorder') }}
 group by orderid 