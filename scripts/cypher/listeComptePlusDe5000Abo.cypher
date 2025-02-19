MATCH (n:Compte) 
WHERE n.`abonnés` IS NOT NULL AND n.`abonnés` > 5000
RETURN n.nom AS Compte, n.`abonnés` AS Nombre_Abonnés
ORDER BY Nombre_Abonnés DESC;

