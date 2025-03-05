select c1.name name1, c2.name name2, length
from countryBordersWith cbw
JOIN country c1 on cbw.country1 = c1.code
JOIN country c2 on cbw.country2 = c2.code
order by length desc
;