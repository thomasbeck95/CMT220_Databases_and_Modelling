-- What is largest French city NOT located on a river?

select * from city
where name not in (select city from cityOnRiver)
and country = (select code from country where name = 'France')
order by population desc;