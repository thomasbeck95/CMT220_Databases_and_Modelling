select Country1, count(country2) neigh, c.name from countryBordersWith cbw
join country c on cbw.country1 = c.code
group by country1
order by neigh desc
;


select Country1, count(country2) neigh, c.name, length from countryBordersWith cbw
join country c on cbw.country1 = c.code
group by country1
order by length desc
;