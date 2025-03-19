-- For each country with at least 10 cities,
-- state what percentage of the cities are located on a sea.
-- What is the percentage calculated for Brazil? Blank 1

WITH CTE AS (
select COUNT(*) seaCount
from cityOnSea
where country = 'BR'
),
CTE2 AS (
select COUNT(*) totalCount
from city
Where country = 'BR'
)
select 100.0 * seacount/ totalcount
FROM cte, cte2
;