# README

TEST API : CURL COMMANDS

* GET CATS => curl http://localhost:3000/api/v1/cats

* CREATE CAT => curl -X POST -H "Content-Type: application/json" -d '{"name": "Pablo", "colour": "purple", "sex": "male", "dob": "21/10/1987", "favourite_food": "snails"}' localhost:3000/api/v1/cats/

* UPDATE CAT => curl -X PUT -H "Content-Type: application/json" -d '{"name": "Jean"}' localhost:3000/api/v1/cats/:id

* SEARCH CAT BY NAME => curl http://localhost:3000/api/v1/cats/?search_name=jean

* SEARCH CAT BY COLOUR => curl http://localhost:3000/api/v1/cats/?search_colour=black

* SEARCH CAT BY FAVORITE FOOD => curl http://localhost:3000/api/v1/cats/?search_favourite_food=salmon

* SEARCH CAT BY SEX => curl http://localhost:3000/api/v1/cats/?search_sex=male

* SEARCH CAT BY DOB => curl http://localhost:3000/api/v1/cats/?search_dob=1987