SELECT City
FROM Customers
WHERE Country = 'Germany'
INTERSECT
SELECT City
FROM Products P
JOIN Suppliers S ON P.SupplierID = S.SupplierID
WHERE CategoryID > 2;