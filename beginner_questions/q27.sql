select name from Country
where code not in (select country from seaInProvince)
and code in (select country from countryOnContinent where continent = 'Australia/Oceania');