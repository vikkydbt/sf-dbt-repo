select ord.customerid,c.firstname ,ord.orderid,os.total_amout  
from {{ref('order_summary')}} os 
inner join orders ord 
        on os.orderid=ord.orderid
      join customers c  
        on c.customerid=ord.customerid 

