LOAD CSV WITH HEADERS FROM 'file:///evolution-abonnes-reseaux-sociaux-test.csv' AS row
FIELDTERMINATOR ';'
RETURN row;
