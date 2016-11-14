FROM arangodb/arangodb

ADD Genre.json /Genre.json
ADD Keyword.json /Keyword.json
ADD Movie.json /Movie.json
ADD Person.json /Person.json
ADD Relation.json /Relation.json
ADD import.sh   /import.sh
