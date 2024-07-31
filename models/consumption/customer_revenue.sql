SELECT
   fct.customerid,
   c.customername,
   sum(fct.OrderCount) AS OrderCount, 
   sum(fct.Revenue) AS Revenue

FROM {{ ref( 'orders_fact') }} fct
JOIN
{{ ref('customers_stg') }} c
ON c. CustomerID = fct.customerid 
group by fct.customerid,
c.customername 