{{ config(materialized='ephemeral') }}
with order_summary as (
                       select orderid,sum(quantity*unitprice) as total_amout from LANDING.orderitems
                       group by orderid 
                      )
select * from order_summary 