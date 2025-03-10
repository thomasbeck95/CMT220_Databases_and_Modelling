select ItemName
from menu
where Category = 'Dessert'
INTERSECT
select ItemName
from customers
NATURAL JOIN allergies
NATURAL JOIN recipe
NATURAL JOIN menu
WHERE FirstName = 'Grace' AND LastName = 'Kelly'
;