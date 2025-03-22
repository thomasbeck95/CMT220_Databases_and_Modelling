
WITH CTE2 AS(
WITH CTE1 AS (SELECT Country
FROM countryOnContinent
WHERE continent = 'Africa'
)

SELECT AVG(Inflation)
FROM countryEconomy
WHERE country in (select * from CTE1)
)

select *
FROM countryEconomy
WHERE inflation > (select * FROM CTE2)
;