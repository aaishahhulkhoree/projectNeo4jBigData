MATCH (n)
WHERE n.nom IS NOT NULL
SET n.nom = REPLACE(n.nom, " ", "")
