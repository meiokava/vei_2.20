SELECT MIN(pages) AS mins, MAX(pages) AS maxs,MAX(pages)-MIN(pages) AS razs, publisher
FROM Journals
GROUP BY publisher
LIMIT 20;