CREATE 
       (n:Human)-[:FRIEND]->(n:Human)
       (n:Human)-[:USES]->(n:Device)
       (n:Human)-[:HAS]->(n:Interest)
       (n:Human)-[:PARTICIPANT]->(n:Event)

//template Human
// CREATE (p:Human { 
//        firstname: "$firstname",
//        lastname: "$lastname",
//        fullname: "$firstname $lastname"
//        })

CREATE INDEX ON :Human(fullname)
CREATE CONSTRAINT ON (person:HUMAN) ASSERT person.fullname IS UNIQUE

CREATE 
       (n:Human)-[:USES]-(n:Device)
       (n:Device)-[:LOCATED]->(n:Location)
       (n:Device)-[:
