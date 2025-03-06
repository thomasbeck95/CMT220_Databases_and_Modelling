-- Find the most populous capital city of the world.
-- Here, we mean the capital of a country, not just a province.

select *
from country
join city on city.name = country.Capital
order by Population desc
;
