select * from organization o
join country c on c.code = o.Country
order by Population desc
;