SELECT 2 * Price - Points / 100
FROM menu
CROSS JOIN customers
WHERE ItemName = 'Margherita Pizza'
AND FirstName = 'Frank' AND LastName = 'Sinatra'
;