// chargement des données dans Neo4j 

LOAD CSV WITH HEADERS FROM 'file:///evolution-abonnes-reseaux-sociaux-test.csv' AS row
MERGE (u:User {alias: row.ALIAS, name: row.NOM})
MERGE (s:SocialMedia {name: 'Twitter'})
MERGE (u)-[r:HAS_ACCOUNT {date: row.DATE, url: row.URL, nb_abo: toInteger(row.NB_ABO)}]->(s);


