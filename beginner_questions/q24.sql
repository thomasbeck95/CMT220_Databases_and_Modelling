select *
from country
where code in(select country from countryOnContinent where continent = 'Africa')
;