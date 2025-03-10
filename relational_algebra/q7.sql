SELECT ItemName
FROM customers
NATURAL JOIN allergies
NATURAL JOIN recipe
NATURAL JOIN menu
where FirstName = 'Charlie' AND LastName = 'Chaplin';