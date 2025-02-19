from neo4j import GraphDatabase
import csv

# Connexion à Neo4j
uri = "bolt://localhost:7687"
user = "neo4j"
password = "bigdata1"
driver = GraphDatabase.driver(uri, auth=(user, password))

# Fonction d'insertion
def insert_data(tx, alias, name, url, date, nb_abo):
	tx.run(
    	"""
    	MERGE (u:User {alias: $alias, name: $name})
    	MERGE (s:SocialMedia {name: 'Twitter'})
    	MERGE (u)-[:HAS_ACCOUNT {date: $date, url: $url, nb_abo: toInteger($nb_abo)}]->(s)
    	""",
    	alias=alias, name=name, url=url, date=date, nb_abo=nb_abo
	)
