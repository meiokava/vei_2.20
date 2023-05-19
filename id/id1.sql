SELECT publisher, society, count() as count
FROM Journals
WHERE publisher == 'Kluwer'
GROUP BY society;