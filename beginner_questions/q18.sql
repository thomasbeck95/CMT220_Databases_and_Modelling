select * from countryEconomy
where country = (select code from country where name = 'Switzerland')
;