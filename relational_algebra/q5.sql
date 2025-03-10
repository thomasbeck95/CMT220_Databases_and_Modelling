SELECT IngredientName
FROM menu
NATURAL JOIN recipe
NATURAL JOIN ingredients
where ItemName = 'Cheeseburger'
INTERSECT
SELECT IngredientName
FROM menu
NATURAL JOIN recipe
NATURAL JOIN ingredients
where ItemName = 'Hamburger'
;