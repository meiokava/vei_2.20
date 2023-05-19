SELECT title, society, citations
FROM Journals
WHERE society == 'yes' AND citations < 4000
