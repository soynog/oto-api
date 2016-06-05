curl --include --request POST http://localhost:3000/trips \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "trip": {
      "name": "Big Crazy Trip",
      "description": "Everyone is gonna be there!",
      "start_date": "2016-07-01",
      "end_date": "2016-07-03",
      "location": "The Lodge"
    }
  }'
