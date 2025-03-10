SELECT IngredientName
FROM customers
NATURAL JOIN allergies
NATURAL JOIN ingredients
where LastName = 'Wonderland'
;