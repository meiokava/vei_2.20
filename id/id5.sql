SELECT publisher, MIN(foundingyear) AS mfy, MAX(pages)-MIN(pages) AS razs
FROM Journals
GROUP BY publisher
ORDER BY mfy;