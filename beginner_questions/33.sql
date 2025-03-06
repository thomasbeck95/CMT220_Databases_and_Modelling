-- What are the names and capitals of the British provinces (and territories)?
--How many rows have been returned?

select c.name, c.capital from countryPolitics cp
join country c on c.code = cp.country
where dependent = 'GB'
UNION
select c.name, c.Capital
from country c
where code = 'GB'
;