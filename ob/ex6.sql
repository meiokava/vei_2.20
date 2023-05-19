.mode box
.import --csv city.csv city_csv
WITH lat AS (SELECT geo_lat AS lat FROM city_csv WHERE city = 'Самара'),
     lon AS (SELECT geo_lon AS lon FROM city_csv WHERE city = 'Самара')
SELECT city, sqrt(POWER((lat - geo_lat), 2) + POWER((lon - geo_lon), 2)) AS distance 
FROM city_csv, lat, lon
WHERE city != 'Самара'
ORDER BY distance ASC
LIMIT 3;