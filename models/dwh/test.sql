SELECT
c.CustomerID,
FirstName || '--'||LastName as fullname,
Email,
Phone,
Address,
City,
FROM LANDING.CUSTOMERS c join LANDING.orders ord 
 on c.CustomerID =ord.CustomerID
