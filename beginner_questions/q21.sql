select *
from country
where code not in (select country1 from countryBordersWith)
and code not in (select country2 from countryBordersWith);