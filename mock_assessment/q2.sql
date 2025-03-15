-- Shippers(ShipperID = 2) --> orders(orderID, ShipperID)
--> OrderDetails(OrderID, ProductID) --> Products(ProductID, ProductName)
--

select ShipperID from Shippers where shipperName = 'United Package';

select orderID
from orders
where ShipperID =
	(select ShipperID from Shippers where shipperName = 'United Package');

WITH CTE2 AS (
WITH CTE AS (select ProductID
from OrderDetails
where orderID in (
select orderID
from orders
where ShipperID =
	(select ShipperID from Shippers where shipperName = 'United Package')
))

select productName, orderID
from Products p, OrderDetails od
where p.ProductID in (select * FROM cte)
AND p.productID = od.ProductID
ORDER BY Quantity DESC
)

select o.orderid, COUNT(o.orderdate) countorder, CTE2.ProductName
from orders o, CTE2
where shipperID = 2
AND o.orderid = cte2.orderid
GROUP BY ProductName
ORDER BY countorder desc
;