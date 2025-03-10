select Price - (HourlyRate + (Points/100.0)), *
FROM menu
CROSS JOIN staff
NATURAL JOIN customers
WHERE ItemName = 'Hamburger'
AND FirstName = 'Emily'
AND LastName = 'Davis'
;