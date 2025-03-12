WITH lang AS (select *
from countryLanguage cl
JOIN country c ON cl.country = c.code
WHERE country IN (select country from countryOnContinent where continent = 'Europe'))

select SUM(population * Percentage/100) s1, *
FROM lang
GROUP BY Name
Having s1 > 10000000
; 