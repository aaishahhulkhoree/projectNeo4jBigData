//uniformisation du format de la date 

MATCH (n)
WHERE n.dateString IS NOT NULL
SET n.dateFormatted = date({year: toInteger(split(n.dateString, '/')[2]), month: toInteger(split(n.dateString, '/')[1]), day: toInteger(split(n.dateString, '/')[0])})
REMOVE n.dateString;

