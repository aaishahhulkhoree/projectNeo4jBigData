MATCH (n)
WHERE n.nom IS NOT NULL
SET n.nom = TRIM(REPLACE(REPLACE(n.nom, " '", ""), "  ", " "))