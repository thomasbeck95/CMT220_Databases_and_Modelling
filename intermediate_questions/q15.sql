-- Find all countries that do not border another country.
-- Out of them, what is the name of most populous country in America?
-- GR
select country1
from countryBordersWith
UNION
select Country2
from countryBordersWith
;

WITH CTE AS (
select country1
from countryBordersWith
UNION
select Country2
from countryBordersWith
)

select Country, Population
from countryOnContinent coc
JOIN country c on c.code = coc.country
where continent = 'America'
AND Country not in (select * from CTE)
Order by Population desc
;