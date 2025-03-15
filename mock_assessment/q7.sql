-- What category of products is most often bought with Chang? Please provide the category name.
-- prodID = 2
-- products(ProductID, CategoryID)
WITH CTE2 AS (
WITH CTE AS (select *
from OrderDetails od
JOIN Products p ON p.ProductID = od.ProductID
where od.ProductID = 2)

SELECT orderID, ProductID, Quantity
FROM OrderDetails
WHERE orderID in (select orderID FROM cte)
EXCEPT
select orderID, ProductID, Quantity
FROM CTE
)

select count(*), * FROM CTE2
JOIN Products ON CTE2.ProductID = products.ProductID
GROUP BY categoryID
ORDER BY count(*) DESC
;

select *
from Categories
where CategoryID = 4;

