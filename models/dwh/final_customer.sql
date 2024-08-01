SELECT
CustomerID,
CustomerName
Email,
Phone,
Address,
country_name  
FROM {{ref('customers_stg')}} cust
inner join 
 {{ref('country_code')}} cde
 on cust.country_code=cde.country_code