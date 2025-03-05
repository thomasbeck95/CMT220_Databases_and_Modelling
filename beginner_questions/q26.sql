select country, Name, count(name) countName
from countryReligion
where Name in (select Name from countryReligion where country = (select code from country where name = 'Albania'))
group by country
having countName = 3
;