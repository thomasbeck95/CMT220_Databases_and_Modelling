--a
select * from riverInProvince rp
where country = (select code from country where name = 'Italy')
UNION
select * from lakeInProvince
where country = (select code from country where name = 'Italy')
;

--b
select * from lakeInProvince lp
join lake l on l.name = lp.lake
where country = (select code from country where name = 'Italy')
order by area desc;


--c
select * from riverInProvince rp
JOIN river r ON r.name = rp.river
where country = (select code from country where name = 'Italy')
order by length desc
;

