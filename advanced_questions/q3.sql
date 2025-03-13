WITH CTE AS(
SELECT city.Population, city.name, country.code
FROM  city, country
WHERE country.capital = city.name
)

SELECT *
FROM city
WHERE city.name NOT IN (select name from cte)
AND city.population > (select Population from cte where city.country = cte.code)
AND city.country = 'AND'
;