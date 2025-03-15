-- What is the name of the city with the highest number of orders delivered by Speedy Express?
-- Where ShipperID = 1
--

select count(*), city from orders o
JOIN customers c ON o.CustomerID = c.customerID
where o.shipperID = '1'
GROUP BY city
ORDER BY count(*) desc
;