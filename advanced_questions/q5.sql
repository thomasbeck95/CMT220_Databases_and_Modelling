SELECT SUM(CASE WHEN population < 100000 THEN 1 ELSE 0 END) small,
SUM(CASE WHEN population < 100000 THEN population ELSE 0 END) smallPop,
SUM(CASE WHEN population > 100000 AND population < 1000000 THEN 1 ELSE 0 END) med,
SUM(CASE WHEN population > 100000 AND population < 1000000 THEN population ELSE 0 END) medPop,
SUM(CASE WHEN population > 1000000 THEN 1 ELSE 0 END) big,
SUM(CASE WHEN population > 1000000 THEN Population ELSE 0 END) bigPop
FROM city
WHERE country = 'GB'
;