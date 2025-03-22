WITH CTE AS (
SELECT area
FROM continent
where Name = 'Asia'
)
select ROUND(100 * (sum(Percentage * country.Area/100))/CTE.area, 2)
FROM countryOnContinent, CTE
JOIN country ON country.code = countryOnContinent.Country
where continent = 'Asia'
and Percentage > 50.0
and country.name not in ('Armenia', 'Georgia', 'Azerbaijan','Israel')
;