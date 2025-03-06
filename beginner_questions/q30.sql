select * from country
where code not in (select country from cityOnSea)
and code in (select country from seaInProvince)
order by area desc
;