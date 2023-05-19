.headers on
.mode csv
.separator |
.import --csv city.csv city_csv
SELECT timezone, count()
FROM city_csv
GROUP BY timezone
ORDER BY count() DESC;