select country, count(*) c
from riverInProvince r
group by country
having c >= 25
;