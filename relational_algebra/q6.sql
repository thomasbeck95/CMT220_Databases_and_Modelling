SELECT IngredientName
FROM menu
NATURAL JOIN recipe
NATURAL JOIN ingredients
where ItemName = 'Spaghetti Carbonara';