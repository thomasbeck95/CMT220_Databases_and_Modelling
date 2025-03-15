--What date generated most money from sales?
-- orders(OrderDate, **orderID ) --> orderDetails(**orderID, *productID, Quantity) ----> products(*productID, price)
-- how to calc money --> price * count()



select * FROM orders
;

WITH CTE AS (
select SUM(price * Quantity) money, orderID FROM orderdetails od
JOIN products p ON p.ProductID = od.ProductID
GROUP BY orderID
)

select OrderDate, SUM(money)
FROM orders
JOIN CTE ON CTE.orderID = orders.orderID
GROUP BY OrderDate
ORDER BY SUM(money) desc
;