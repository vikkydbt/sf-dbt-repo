SELECT
OrderItemID, 
OrderID,
ProductID, 
Quantity,
UnitPrice,
Quantity * UnitPrice AS TotalPrice,
Updated_at
FROM LANDING.ORDERITEMS