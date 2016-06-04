curl --include --request POST http://localhost:3000/trips \
  --header "Content-Type: application/json" \
  --data '{
    "trip": {
      "name": "Nick`s Test Trip 2",
      "description": "This trip is gonna be sooo cool guys",
      "start_date": "2016-07-01",
      "end_date": "2016-07-05"
    }
  }'
