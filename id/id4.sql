SELECT publisher,  ROUND(AVG(pages), 1) AS sred_pages
FROM Journals
GROUP BY publisher
ORDER BY pages;