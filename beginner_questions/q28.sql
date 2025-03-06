-- Which countries are located on multiple continents?
-- Order them by their population in ascending order.
-- Copy the first row below.

select *, count(continent) cc
from countryOnContinent cooc
join country c on c.code = cooc.country
group by country
having cc = 2
order by Population asc
;
