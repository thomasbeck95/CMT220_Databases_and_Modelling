select * from countryBordersWith
where Country1 = (select code from country where name = 'Algeria')
;

select * from countryBordersWith
where Country1 = (select code from country where name = '​American Samoa');

select * from countryBordersWith
where Country1 = (select code from country where name = 'Andorra');