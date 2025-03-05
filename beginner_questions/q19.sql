select continent, sum(gdp) sumGDP
from countryEconomy ce
join countryOnContinent coc on ce.country = coc.country
group by continent
order by sumGDP desc
;