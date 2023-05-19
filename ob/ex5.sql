.mode box
.import --csv city.csv city
SELECT timezone, count(*) AS city_count
FROM city WHERE federal_district = 'Сибирский' or federal_district = 'Приволжский'
GROUP BY timezone
ORDER BY timezone ASC;