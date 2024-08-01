select ord.customerid as customer_nuumber,c.firstname as customer_name ,ord.orderid as ordernumber,os.total_amout  
from {{ref('cal_total_amt')}} os inner join orders ord 
        on os.orderid=ord.orderid
      join customers c  
        on c.customerid=ord.customerid 