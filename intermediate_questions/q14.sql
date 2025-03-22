-- a
select rip1.country c1, rip2.country c2, count(*)
from riverInProvince rip1
join riverInProvince rip2 ON rip1.river = rip2.river
where rip1.Country <> rip2.Country
and rip1.Country < rip2.Country
and (rip1.country,rip2.country) in (select Country1, country2 from countryBordersWith)
GROUP BY c1, c2
;