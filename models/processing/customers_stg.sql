SELECT
CustomerID,
FirstName,
LastName,
Email,
Phone,
Address,
City,
State,
ZipCode,
country_code,
Updated_at,
CONCAT(FirstName,LastName) AS CustomerName
FROM LANDING.CUSTOMERS