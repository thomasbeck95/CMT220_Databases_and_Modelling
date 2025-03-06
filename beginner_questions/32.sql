select max(height), c.name, m.name, height  from mountainInProvince mip
join country c on c.code = mip.country
join mountain m on mip.mountain = m.name
group by country
;